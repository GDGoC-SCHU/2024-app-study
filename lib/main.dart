import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gdgstudy/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthenticationScreen(),
    );
  }
}

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  // Firebase Auth 객체 가져오기
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Email, Password 컨트롤러 생성
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 로그인 생성
  Future<void> signUp() async {
try{
  UserCredential userCredential = await _auth
  .createUserWithEmailAndPassword(
    email: _emailController.text,
    password: _passwordController.text,
  )
  .then(( value)
  {
    if(value.user!.email !=null){
      print(value.user!.email);
    }
    return value;
  }
  );
}
on FirebaseAuthException catch(e){
  if(e.message!.contains('weak-password')){
    print('weak-password');
  }
  else if(e.message!.contains('email-already-in-use')){
    print('email-already-in-use');
  }else{
    print(e.message!);
  }
} catch(e){
  print(e.toString());
}
  }
  Future<void> signIn() async {
try{
  UserCredential userCredential=await _auth
  .signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
  .then((value){
    if(value.user!.email !=null){
      print(value.user!.email);
    }
    return value;
  }
  );
}on FirebaseAuthException catch(e){
  if(e.message!.contains('user-not-found')){
    print('wrong-password');
  }else if(e.message!.contains('wrong-password')){
    print('wrong-password');
  }else{
    print(e.message!);
  }
}catch(e){
  print(e.toString());
}
  }
  Future<void> signOut() async {
  await _auth.signOut().then((value) {
    print('signout');
    return value;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Auth: jaemin'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400.0,
                color: Colors.transparent,
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(height: 16.0), // Email과 Password 사이 간격
              Container(
                width: 400.0,
                color: Colors.transparent,
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true, // 비밀번호 입력 보안
                ),
              ),
              const SizedBox(height: 32.0), // 버튼 위 간격
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: signUp,
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: signIn,
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: signOut,
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

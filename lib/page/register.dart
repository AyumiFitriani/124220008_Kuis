import 'package:flutter/material.dart';
// import 'package:kuis/page/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool isLoginSucces = true;

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          _page(),
          _usernameField(),
          _passwordField(),
          // _registerButton(),
        ]),
      ),
    );
  }

  Widget _page() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Register',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Register agar bisa menjelajahi fitur aplikasi.',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
                color: (isLoginSuccess) ? Colors.blue : Colors.deepPurple),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
                color: (isLoginSuccess) ? Colors.blue : Colors.deepPurple),
          ),
        ),
      ),
    );
  }

  // Widget _registerButton(BuildContext context) {
  //   return Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //       width: MediaQuery.of(context).size.width,
  //       child: ElevatedButton(
  //           style: ElevatedButton.styleFrom(
  //               foregroundColor: Colors.white,
  //               backgroundColor:
  //                   (isLoginSuccess) ? Colors.blue : Colors.deepPurple),
  //           onPressed: () {
  //             Navigator.pushReplacement(context,
  //                 MaterialPageRoute(builder: (context) {
  //               return HomePage(
  //                 username: username,
  //               );
  //             }));
  //           }));
  // }
  // child:  Text("Login"),
}

import 'package:flutter/material.dart';
import 'package:message/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/img.png"),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Icon(
              Icons.messenger,

              size: 100,
            ),
          ),
          Center(
            child: Text(
              'Message',
              style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: TextField(


                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Email',
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Password',

                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Container(
              height: 44,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF02ACCE),
                      Color(0xFFF83CB9),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
            ),
          ),
          Center(
            child: Text(
              "Not a member?",

            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    ));
  }
}

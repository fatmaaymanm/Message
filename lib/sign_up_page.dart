import 'package:flutter/material.dart';
import 'package:message/login_page.dart';
import 'package:message/chats.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        child: ListView(children: [
          Icon(
            Icons.messenger,

            size: 100,
          ),
          Center(
            child: Text(
              'Message',
              style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
              child: Text(
                "Sign Up",
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
                    hintText: 'Name',
)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: TextField(

                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Username',
)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: TextField(

                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Birthdate',
  )),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Chats()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
            ),
          )

        ,Center(
          child: Text(
            "Already a member?",

          ),
        )
        ,TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white,
              ),
            )),]
      ),
    ));
  }
}

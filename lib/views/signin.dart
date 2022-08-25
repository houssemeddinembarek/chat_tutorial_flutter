import 'package:chat_tutoriel/views/textfiels.dart';
import 'package:chat_tutoriel/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(
        backgroundColor: Colors.blue,
        title: 'Sign In',
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 130,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xff007EF4),
                        const Color(0xff2A75BC),
                      ]),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text('Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 227, 231, 235),
                        Color.fromARGB(255, 165, 168, 171),
                      ]),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text('Sign In With Google',
                      style: TextStyle(color: Colors.black87, fontSize: 18)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account ',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    Text(
                      'Register now',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                )
                // TextFieldWidget(text: "text", colorIn: Color(1))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

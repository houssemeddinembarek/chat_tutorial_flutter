import 'package:chat_tutoriel/services/auth.dart';
import 'package:chat_tutoriel/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;
  AuthMethods authMethods = new AuthMethods();

  final formKey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  signMeUp() {
    if (formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      authMethods
          .signUpWithEmailAndPassword(emailTextEditingController.text,
              passwordTextEditingController.text)
          .then((val) {
        print("$val");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(
        backgroundColor: Colors.blue,
        title: 'Sign Up',
      ),
      body: isLoading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 130,
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) {
                                return (val == null ||
                                        val.isEmpty ||
                                        val.length < 4)
                                    ? "Please Provide a Username"
                                    : null;
                              },
                              controller: userNameTextEditingController,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Username',
                                  hintStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            TextFormField(
                              validator: (val) {
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!)
                                    ? null
                                    : "Please Provide a valid email";
                              },
                              controller: emailTextEditingController,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            TextFormField(
                              validator: (val) {
                                return (val != null && val.length > 6)
                                    ? null
                                    : "Please Provide a password 6+ character";
                              },
                              controller: passwordTextEditingController,
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          signMeUp();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                const Color(0xff007EF4),
                                const Color(0xff2A75BC),
                              ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text('Sign Up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        ),
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
                        child: Text('Sign Up With Google',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 18)),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Text(
                            'Sign In now',
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

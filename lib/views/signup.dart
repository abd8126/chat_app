import 'package:chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 70,
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: usernameEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Username"),
                  ),
                  TextField(
                    controller: emailEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("E-mail"),
                  ),
                  TextField(
                    controller: passwordEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Password"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        child: Text(
                          "Forgot Password",
                          style: simpleTextStyle(),
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          const Color(0xff007EF4),
                          const Color(0xff2A75BC)
                        ]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Sign In with Google",
                      style: TextStyle(color: Colors.black87, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account? ",
                        style: mediumTextStyle(),
                      ),
                      Text(
                        "Signup Now ",
                        style: mediumTextStyle(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

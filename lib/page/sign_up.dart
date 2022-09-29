import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/core/colors.dart';
import 'package:real_estate/core/space.dart';
import 'package:real_estate/core/text_style.dart';
import 'package:real_estate/data/landing_page.dart';
import 'package:real_estate/page/show_exception_alert.dart';
import 'package:real_estate/services/auth.dart';
import 'package:real_estate/widget/main_button.dart';
import 'package:real_estate/widget/text_fild.dart';

import 'alertDialog.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userPass = TextEditingController();
  TextEditingController userName = TextEditingController();

  String get email => userName.text;
  String get password => userPass.text;

  bool _isLoading = false;

  void _submit() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.createUserWithEmailAndPassword(email, password);
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => landingPage()));
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      showExecptionALertDialog(
        context,
        title: 'Sign in failed',
        exception: e,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpaceVH(height: 50.0),
              Text(
                'Create new account',
                style: headline1,
              ),
              SpaceVH(height: 10.0),
              Text(
                'Please fill in the form to continue',
                style: headline3,
              ),
              SpaceVH(height: 60.0),
              textFild(
                enabled: _isLoading == false,
                textInputAction: TextInputAction.next,
                controller: userName,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'Email Address',
              ),
              textFild(
                enabled: _isLoading == false,
                textInputAction: TextInputAction.done,
                controller: userPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Password',
              ),
              SpaceVH(height: 80.0),
              Mainbutton(
                onTap: () {
                  if (email.isNotEmpty && password.isNotEmpty) {
                    _submit();
                  } else {
                    return showAlertDialog(context,
                        title: "Email or Password",
                        content:
                            "Make sure EmailField and PasswordField is not empty before Submit",
                        defaultActionText: "OK");
                  }
                },
                text: 'Sign Up',
                btnColor: blueButton,
              ),
              SpaceVH(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Have an account? ',
                      style: headline.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: headlineDot.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/core/colors.dart';
import 'package:real_estate/core/constant.dart';
import 'package:real_estate/core/space.dart';
import 'package:real_estate/core/text_style.dart';
import 'package:real_estate/page/alertDialog.dart';
import 'package:real_estate/page/show_exception_alert.dart';
import 'package:real_estate/page/sign_up.dart';
import 'package:real_estate/services/auth.dart';
import 'package:real_estate/widget/main_button.dart';
import 'package:real_estate/widget/text_fild.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _showSignInError(BuildContext context, Exception exception) {
    if (exception is FirebaseException &&
        exception.code == 'ERROR_ABORTED_BY_USER') {
      return;
    }
    showExecptionALertDialog(
      context,
      title: 'Sign in failed',
      exception: exception,
    );
  }

  Future<void> _signInAnonymous() async {
    try {
      setState(() => _isLoading = true);
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInAnonymously();
    } on Exception catch (e) {
      _showSignInError(context, e);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      setState(() => _isLoading = true);
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithGoogle();
    } on Exception catch (e) {
      _showSignInError(context, e);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  final FocusNode _userNameFocusNode = FocusNode();
  final FocusNode _userPassFocusNode = FocusNode();

  String get email => userName.text;
  String get password => userPass.text;

  bool _isLoading = false;

  void _submit() async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithEmailAndPassword(email, password);
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
              _buildHeader(),
              SpaceVH(height: 10.0),
              Text(
                'Please sign in to your account',
                style: headline3,
              ),
              SpaceVH(height: 60.0),
              textFild(
                enabled: _isLoading == false,
                focusNode: _userNameFocusNode,
                textInputAction: TextInputAction.next,
                keyBordType: TextInputType.emailAddress,
                controller: userName,
                image: 'user.svg',
                hintTxt: 'Email',
              ),
              textFild(
                enabled: _isLoading == false,
                focusNode: _userPassFocusNode,
                textInputAction: TextInputAction.done,
                controller: userPass,
                image: 'hide.svg',
                isObs: true,
                hintTxt: 'Password',
              ),
              SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: headline3,
                    ),
                  ),
                ),
              ),
              SpaceVH(height: 25.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
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
                      text: 'Sign in with Email',
                      image: 'mail.png',
                      btnColor: blueButton,
                    ),
                    SpaceVH(height: 47.5),
                    Text(
                      'or',
                      style: headline3,
                    ),
                    SpaceVH(height: 47.5),
                    Mainbutton(
                      onTap: _signInAnonymous,
                      text: 'Go anonymous',
                      image: 'incognito.png',
                      btnColor: kDarkColor,
                    ),
                    SpaceVH(height: 20.0),
                    Mainbutton(
                      onTap: _signInWithGoogle,
                      text: 'Sign in with google',
                      image: 'google.png',
                      btnColor: white,
                      txtColor: blackBG,
                    ),
                    SpaceVH(height: 20.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => SignUpPage()));
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Don\'t have an account ? ",
                            style: headline.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up',
                            style: headlineDot.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Text(
      'Welcome Back !',
      style: headline1,
    );
  }
}

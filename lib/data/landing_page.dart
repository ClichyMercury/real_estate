import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/page/login_page.dart';
import 'package:real_estate/services/auth.dart';
import 'package:real_estate/views/base.dart';

class landingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User?>(
      stream: auth.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          if (user == null) {
            return LoginPage();
          }
          return baseApp();
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(color: Colors.black),
          ),
        );
      }),
    );
  }
}

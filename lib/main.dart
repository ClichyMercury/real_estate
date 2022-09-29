import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/core/style.dart';
import 'package:real_estate/page/splash_Page.dart';
import 'package:real_estate/services/auth.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Provider<AuthBase>(
        create: (context) => Auth(),
        child: MaterialApp(
          title: 'DomArt',
          debugShowCheckedModeBanner: false,
          theme: Stlyes.themeData(),
          home: HomePage(),
        ),
      ),
    );
  }
}

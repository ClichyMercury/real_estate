import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/core/colors.dart';
import 'package:real_estate/page/alertDialog.dart';
import 'package:real_estate/views/home/search.dart';
import 'package:real_estate/views/profil/profil.dart';
import '../services/auth.dart';
import 'categories/category.dart';

class baseApp extends StatefulWidget {
  const baseApp({
    Key? key,

  }) : super(key: key);


  @override
  State<baseApp> createState() => _baseAppState();
}

class _baseAppState extends State<baseApp> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  int currentIndex = 0;

  final screens = [
    Search(),
    Category(),
    Profil(),
  ];

  void _setIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Future<void> _signOut() async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
      context,
      title: "Logout",
      content: "Are you sure you want logout ?",
      cancelActionText: 'Cancel',
      defaultActionText: "Logout",
    );
    if (didRequestSignOut == true) {
      _signOut();
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(LineAwesomeIcons.home, size: 30),
      Icon(Icons.category, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return Container(
      color: grayText,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            appBar: AppBar(
              title: Text(
                'DomArt',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 35),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () => _confirmSignOut(context),
                  icon: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: IndexedStack(
              index: currentIndex,
              children: screens,
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.white),
              ),
              child: CurvedNavigationBar(
                key: navigationKey,
                color: grayText,
                buttonBackgroundColor: Colors.black,
                backgroundColor: Colors.transparent,
                height: 60,
                animationCurve: Curves.decelerate,
                animationDuration: Duration(milliseconds: 350),
                index: currentIndex,
                items: items,
                onTap: (index) => _setIndex(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

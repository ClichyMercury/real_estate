import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'publish.dart';

class Profil extends StatefulWidget {
  Profil({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final user = FirebaseAuth.instance.currentUser;

    // Name, email address, and profile photo URL
    final name = user!.displayName;
    final email = user!.email;
    final photoUrl = user!.photoURL;

    // Check if user's email is verified
    final emailVerified = user!.emailVerified;

    // The user's ID, unique to the Firebase project. Do NOT use this value to
    // authenticate with your backend server, if you have one. Use
    // User.getIdToken() instead.
    final uid = user!.uid;

    final List<String> list = [
      'https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990_1280.jpg',
      'https://cdn.pixabay.com/photo/2014/11/21/17/17/house-540796_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_1280.jpg',
      'https://cdn.pixabay.com/photo/2013/11/27/09/49/iceland-219182_1280.jpg',
      'https://cdn.pixabay.com/photo/2017/07/09/03/19/home-2486092_1280.jpg'
    ];

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: const Alignment(
            0.0, 1.0), // 10% of the width, so there are ten blinds.
        colors: [
          const Color(0xFFC5C5C5),
          const Color(0xFFFFFFFF),
        ], // whitish to gray
        tileMode: TileMode.clamp, // repeats the gradient over the canvas
      )),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ArcClipper(),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/profilebg.jpg',
                  fit: BoxFit.fitHeight,
                  height: _height / 2.5,
                  colorBlendMode: BlendMode.clear,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: _height / 3.6, right: _width / 20),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => publish()),
                    ),
                  );
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height / 3.3, left: _width / 20),
            child: Material(
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    '${photoUrl}',
                  ),
                  radius: _height / 12),
              elevation: 15.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(_height / 12)),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: _width / 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: _height / 30,
                        ),
                        Text(
                          '${name}',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        SizedBox(
                          height: _height / 100,
                        ),
                        Row(
                          children: <Widget>[
                            SHLabel(
                              label: '${uid}',
                            ),
                            SHLabel(
                              label: '${email}',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: _height / 50,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'MOVIES',
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            SizedBox(
                              width: _width / 30,
                            ),
                            Text(
                              '56  ',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: _width / 30,
                            ),
                            Text(
                              'PLAYS',
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            SizedBox(
                              width: _width / 30,
                            ),
                            Text(
                              '29  ',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: _width / 30,
                            ),
                            Text(
                              'MUSICLS',
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            SizedBox(
                              width: _width / 30,
                            ),
                            Text(
                              '11  ',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: _height / 3.5, left: _width / 2.2),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'FOLLOWERS',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '3.5K',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: _width / 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'FOLLOWING',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '1.9K',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Text(''),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
//                          height: _height / 4,
                          margin: EdgeInsets.only(
                              left: _width / 20, right: _width / 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withAlpha(70),
                                    offset: const Offset(0.0, -10.0),
                                    blurRadius: 10.0),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          padding: EdgeInsets.all(_width / 40),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'HOUSES',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '...',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: _height / 5,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return Container(
                                        width: _width / 4,
                                        height: _height / 6,
                                        margin: EdgeInsets.all(_width / 40),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '${list[index % list.length]}'),
                                                fit: BoxFit.cover)));
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: _height / 40,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SHLabel extends StatelessWidget {
  String? label;
  SHLabel({this.label});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
      child: Text(
        label!,
        style: TextStyle(fontSize: 10.0, color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      margin: EdgeInsets.only(right: 4.0),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 3 * size.height / 4);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

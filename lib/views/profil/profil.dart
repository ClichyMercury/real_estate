import 'package:flutter/material.dart';
import 'publish.dart';

class Profil extends StatefulWidget {
  Profil({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ProfilState createState() => new _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final List<String> list = [
      'https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990_1280.jpg',
      'https://cdn.pixabay.com/photo/2014/11/21/17/17/house-540796_1280.jpg',
      'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_1280.jpg',
      'assets/images/oHouse3.jpg',
      'assets/images/oHouse4.jpg'
    ];

    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        begin: Alignment.topRight,
        end: new Alignment(
            0.0, 1.0), // 10% of the width, so there are ten blinds.
        colors: [
          const Color(0xFFC5C5C5),
          const Color(0xFFFFFFFF),
        ], // whitish to gray
        tileMode: TileMode.clamp, // repeats the gradient over the canvas
      )),
      child: new Stack(
        children: <Widget>[
          new ClipPath(
            clipper: new ArcClipper(),
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  'assets/images/profilebg.jpg',
                  fit: BoxFit.fitHeight,
                  height: _height / 2.5,
                  colorBlendMode: BlendMode.clear,
                ),
              ],
            ),
          ),
          new Align(
            alignment: Alignment.topRight,
            child: new Padding(
              padding:
                  new EdgeInsets.only(top: _height / 3.6, right: _width / 20),
              child: new FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => publish()),
                    ),
                  );
                },
                child: new Icon(Icons.add),
                backgroundColor: Colors.black87,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: _height / 3.3, left: _width / 20),
            child: new Material(
              child: new CircleAvatar(
                  backgroundImage: new AssetImage(
                    'assets/images/jackman.png',
                  ),
                  radius: _height / 12),
              elevation: 15.0,
              color: Colors.transparent,
              borderRadius:
                  new BorderRadius.all(new Radius.circular(_height / 12)),
            ),
          ),
          new Scaffold(
            backgroundColor: Colors.transparent,
            body: new Container(
              child: new Stack(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(left: _width / 20),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: _height / 30,
                        ),
                        new Text(
                          'Hugh Jackman',
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ),
                        new SizedBox(
                          height: _height / 100,
                        ),
                        new Row(
                          children: <Widget>[
                            new SHLabel(
                              label: 'ACTOR',
                            ),
                            new SHLabel(
                              label: 'PRODUCER',
                            ),
                          ],
                        ),
                        new SizedBox(
                          height: _height / 50,
                        ),
                        new Row(
                          children: <Widget>[
                            new Text(
                              'MOVIES',
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              '56  ',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              'PLAYS',
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              '29  ',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              'MUSICLS',
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              '11  ',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 3.5, left: _width / 2.2),
                    child: new Row(
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'FOLLOWERS',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            new Text(
                              '3.5K',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        new SizedBox(
                          width: _width / 15,
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'FOLLOWING',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            new Text(
                              '1.9K',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 2.8,
                        left: _width / 20,
                        right: _width / 20,
                        bottom: _height / 8),
                    child: new Container(
                      child: new SingleChildScrollView(
                        child: TextButton(
                          onPressed: () {} , child: Text('Post'),
                        ),
                      ),
                    ),
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Container(
//                          height: _height / 4,
                          margin: EdgeInsets.only(
                              left: _width / 20, right: _width / 20),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black.withAlpha(70),
                                    offset: const Offset(0.0, -10.0),
                                    blurRadius: 10.0),
                              ],
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(5.0))),
                          padding: new EdgeInsets.all(_width / 40),
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    'MOVIES',
                                    style: new TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new Expanded(
                                    child: new Text(
                                      '...',
                                      style: new TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ),
                              new Container(
                                height: _height / 5,
                                child: new ListView.builder(
                                  itemBuilder: (context, index) {
                                    return new Container(
                                        width: _width / 4,
                                        height: _height / 6,
                                        margin: new EdgeInsets.all(_width / 40),
                                        decoration: BoxDecoration(
                                            borderRadius: new BorderRadius.all(
                                                new Radius.circular(5.0)),
                                            image: new DecorationImage(
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
                        new SizedBox(
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
    return new Container(
      padding: new EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
      child: Text(
        label!,
        style: new TextStyle(fontSize: 10.0, color: Colors.white),
      ),
      decoration: new BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.all(new Radius.circular(8.0))),
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

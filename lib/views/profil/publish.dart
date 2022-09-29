import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class publish extends StatefulWidget {
  const publish({super.key});

  @override
  State<publish> createState() => _publishState();
}

class _publishState extends State<publish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DomArt',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w300, fontSize: 35),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text('add'),
      ),
    );
  }
}

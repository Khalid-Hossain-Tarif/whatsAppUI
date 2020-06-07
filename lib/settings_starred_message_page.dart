import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsStarredMessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starred Message',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
              child: Icon(
                FontAwesomeIcons.solidStar, size: 60.0,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text(
                'Tap and hold on any message in any chat to start, '
                    'so you can easily find it later.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17, color: Colors.black54,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SettingsHelpContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Contact Us',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: TextField(
                textInputAction: TextInputAction.send,
                textCapitalization: TextCapitalization.sentences,
                maxLines: 7,
                autocorrect: true,
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 0.3,
                  wordSpacing: 0.5,
                ),
                cursorColor: Theme.of(context).primaryColor,
                cursorWidth: 3.0,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Describe your problem',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 0.3,
                  ),
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Add screenshots(optional)',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Color(0xFFF2F2F2),
                        ),
                      ),
                      Positioned(
                        top: 28.0,
                        left: 33.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            splashColor: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.add,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Color(0xFFF2F2F2),
                        ),
                      ),
                      Positioned(
                        top: 28.0,
                        left: 33.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            splashColor: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.add,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Color(0xFFF2F2F2),
                        ),
                      ),
                      Positioned(
                        top: 28.0,
                        left: 33.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            splashColor: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.add,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Have you read our FAQ yet?',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          FloatingActionButton.extended(
            label: Text(
                'Next',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey,
            splashColor: Colors.white,
            isExtended: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ],
      ),
    );
  }
}

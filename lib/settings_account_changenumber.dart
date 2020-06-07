import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp_clone/settings_account_changenumber_next.dart';

class SettingsAccountChangeNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Number',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.9),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.phone_forwarded, size: 50.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Changing your phone number will migrate your account info,'
                  ' groups & settings.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17, color: Colors.black,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Before proceeding, please confirm that you are able to receive SMS'
                  'or calls at your new number.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15, color: Colors.grey,
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            Text(
              'If you have both a new phone \& a new number, first'
                  'change your number on your old phone.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15, color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        backgroundColor: Theme.of(context).accentColor,
        splashColor: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        label: Text(
          'Next'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
          ),
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute
            (builder: (context) => SettingsAccountChangeNumberNext()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

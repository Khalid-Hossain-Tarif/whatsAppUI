import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp_clone/settings_account_twostep_verification_next1.dart';

class SettingsAccountTwoStepVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Two-step verification',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.9),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.more, size: 50.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'For added security, enable two-step verification which will'
                  'require a PIN when registering your phone number with WhatsApp again.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15, color: Colors.black54,
                letterSpacing: 0.3,
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
          'Enable'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
          letterSpacing: 0.3,
          ),
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute
            (builder: (context) => SettingsAccountTwoStepVerificationNext1()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

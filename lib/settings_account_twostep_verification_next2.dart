import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsAccountTwoStepVerificationNext2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Two-step verification'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Text(
              'Confirm your PIN:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17, color: Colors.black87,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              style: TextStyle(
                color: Colors.black, fontSize: 25.0,
              ),
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: '* * *   * * *',
                border: InputBorder.none,
                hintStyle: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 0.3, fontSize: 25.0
                ),
                contentPadding: EdgeInsets.all(10.0),
              ),
            ),
            Divider(
              height: 0.0,
              thickness: 2.0,
              indent: 95.0,
              endIndent: 95.0,
              color: Colors.black54,
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
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

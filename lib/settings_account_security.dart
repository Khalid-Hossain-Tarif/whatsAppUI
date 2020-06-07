import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsAccountSecurity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Security'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 100.0),
              child: Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.lock, size: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
               text: 'Your messages and calls are secured with end-to-end'
                    'encryption, which means WhatsApp and thrid parties can\''
                   'read or listen to them.',
                style: TextStyle(
                  color: Colors.black, //fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
                children: [
                  TextSpan(
                    text: ' Learn more',
                    style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 30.0,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0.0),
              title: Text(
                'Show security notifications',
                style: TextStyle(
                  fontSize: 17.0, fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                'Turn on this settings to receive notifications when a contact\''
                    's security code has changed. Your messages and calls are'
                    'encrypted regardless of this setting.',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.black54,
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.toggleOff, color: Colors.grey,
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}

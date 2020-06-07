import 'package:flutter/material.dart';

class SettingsAccountRequestAccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Request Account Info'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0, bottom: 20.0),
        child: ListView(
          children: <Widget>[
            Column(
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
                      Icons.description, size: 70.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Create a report of you. WhatsApp account information and'
                        'settings, which you can access or port to another app.'
                        ' This report does not include you messages.',
                    style: TextStyle(
                      color: Colors.black,
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
                  leading: Icon(
                    Icons.description, color: Theme.of(context).primaryColor,
                    size: 27.0,
                  ),
                  title: Text(
                    'Request report',
                    style: TextStyle(
                        fontSize: 17.0, fontWeight: FontWeight.bold
                    ),
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 30.0,
                ),
                Text(
                  'Your report will be ready in about 3 days. You\'ll have a few'
                      'weeks to download your report after it\'s available.'
                      '\n\n'
                      'Your request will be canceled if you make changes to your'
                      'account such as changing your number or deleting your'
                      'account.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

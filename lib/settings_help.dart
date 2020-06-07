import 'package:flutter/material.dart';
import 'package:whatsapp_clone/settings_help_contactus.dart';

import 'help_app_info.dart';

class SettingsHelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            //FAQ
            ListTile(
              leading: Icon(
                Icons.help_outline,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){

              },
            ),
            //Contact Us
            ListTile(
              leading: Icon(
                Icons.group,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Contact us',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                'Questions? Need help?',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsHelpContactUs()),
                );
              },
            ),
            //Terms and Privacy Policy
            ListTile(
              leading: Icon(
                Icons.description,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Terms and Privacy Policy',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){},
            ),
            //App Info
            ListTile(
              leading: Icon(
                Icons.info_outline,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'App info',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => HelpAppInfoPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

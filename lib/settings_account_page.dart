import 'package:flutter/material.dart';
import 'package:whatsapp_clone/settings_account_changenumber.dart';
import 'package:whatsapp_clone/settings_account_delete_myaccount.dart';
import 'package:whatsapp_clone/settings_account_privacy.dart';
import 'package:whatsapp_clone/settings_account_request_accountinfo_page.dart';
import 'package:whatsapp_clone/settings_account_security.dart';
import 'package:whatsapp_clone/settings_account_twostep_verification.dart';

class SettingsAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.lock,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Privacy',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) =>SettingsAccountPrivacy()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.security,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Security',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsAccountSecurity()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.more_horiz,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Two-step verification',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsAccountTwoStepVerification()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.phonelink_ring,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Changed number',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsAccountChangeNumber()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.description,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Request account info',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsAccountRequestAccountInfo())
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.delete,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Delete my account',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsAccountDeleteMyAccount()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

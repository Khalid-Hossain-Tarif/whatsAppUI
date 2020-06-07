import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsAccountPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy'
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 0.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Who can see my personal info',
              style: TextStyle(
                color: Theme.of(context).accentColor, fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'If you don\' share your Last Seen you won\'t be able to see'
                  'other people\'s Last Seen.',
              style: TextStyle(
                color: Colors.black54, fontSize: 14.0,
              ),
            ),

            //Last Seen
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Last seen',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'Medium',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),

            //Profile Photo
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Profile Photo',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'Everyone',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),

            //About
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'About',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'Everyone',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),

            //Status
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Status',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'My contacts',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),

            //Read Receipts
            ListTile(
              contentPadding: EdgeInsets.only(left: 0.0, right: 10.0),
              dense: true,
              title: Text(
                'Read receipts',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'If turned off, you won\'t send or receive Read receipts. Read receipts'
                    'are always sent for group chats.',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.toggleOn, color: Theme.of(context).primaryColor,
              ),
              onTap: (){},
            ),
            Divider(
              height: 25.0,
            ),

            //Groups
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Groups',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'Everyone',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),

            //Live Location
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Live Location',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'None',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),

            //Blocked contacts
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(
                'Blocked contacts',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              subtitle: Text(
                'None',
                style: TextStyle(
                    fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                ),
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}

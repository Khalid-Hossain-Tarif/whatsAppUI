import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsChatBackup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat Backup',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            //Last Backup
            ListTile(
              leading: Icon(
                Icons.backup,
                size: 25.0,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Last Backup',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Backup your messages and media to Google Drive. You can restore them when you reinstall'
                        'WhatsApp. Your messages will also back up to your phone\'s interal storage.',
                    style: TextStyle(
                      fontSize: 13.0, color: Colors.black54
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Local: 12:21 AM',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Google Drive: Never',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    child: Text(
                      'Back Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Theme.of(context).accentColor,
                    splashColor: Colors.white70,
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.0,
            ),

            //Google Drive Settings
            ListTile(
              leading: Icon(
                FontAwesomeIcons.googleDrive,
                size: 23.0,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Google Drive Settings',
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Messages and media backend up in Google Drive are not protected'
                        'by WhatsApp end to-end encyption.',
                    style: TextStyle(
                      fontSize: 13.0, color: Colors.black54
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //Back Up To Google Drive
                  ListTile(
                    dense: true,
                    title: Text(
                      'Back up to Google Drive',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: Text(
                      'Never',
                      style: TextStyle(
                          fontSize: 13.0, color: Colors.grey,letterSpacing: 0.3
                      ),
                    ),
                    onTap: (){},
                  ),
                  SizedBox(
                    height: 5.0,
                  ),

                  //Google Account
                  ListTile(
                    dense: true,
                    title: Text(
                      'Google Account',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: Text(
                      'None Selected',
                      style: TextStyle(
                          fontSize: 13.0, color: Colors.grey,letterSpacing: 0.3
                      ),
                    ),
                    onTap: (){},
                  ),
                  SizedBox(
                    height: 5.0,
                  ),

                  //Back Up Over
                  ListTile(
                    dense: true,
                    title: Text(
                      'Back up over',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: Text(
                      'Wi-Fi only',
                      style: TextStyle(
                          fontSize: 13.0, color: Colors.grey,letterSpacing: 0.3
                      ),
                    ),
                    onTap: (){},
                  ),
                  SizedBox(
                    height: 5.0,
                  ),

                  //Includes videos
                  ListTile(
                    dense: true,
                    title: Text(
                      'Include videos',
                      style: TextStyle(
                        fontSize: 16.0,
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
          ],
        ),
      ),
    );
  }
}

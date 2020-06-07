import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
        ),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(
                  height: 20.0,
                  child: ListTile(
                    title: Text(
                      'Reset notification settings'
                  ),
                    onTap: (){},
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Conversation tones
                ListTile(
                  isThreeLine: true,
                  title: Text(
                    'Conversation tones',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Play sounds for incoming and outgoing\nmessages.',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey,letterSpacing: 0.5
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.toggleOn, color: Theme.of(context).accentColor,
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 20.0,
                ),

                //Messages
                Text(
                  'Messages',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                //Notification tone
                ListTile(
                  dense: true,
                  title: Text(
                    'Notification tone',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Default ringtone (Bongo)',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Vibrate
                ListTile(
                  dense: true,
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Popup Notification
                ListTile(
                  dense: true,
                  title: Text(
                    'Popup Notification',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'No popup',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Light
                ListTile(
                  dense: true,
                  title: Text(
                    'Light',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'White',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Use high priority notifications
                ListTile(
                  isThreeLine: true,
                  title: Text(
                    'Use high priority notifications',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Show previews of notifications at the\ntop of the screen',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey,letterSpacing: 0.5
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.toggleOn, color: Theme.of(context).accentColor,
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 20.0,
                ),

                //Groups
                Text(
                  'Groups',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                //Notification tone
                ListTile(
                  dense: true,
                  title: Text(
                    'Notification tone',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Default ringtone (Bongo)',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Vibrate
                ListTile(
                  dense: true,
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Popup Notification
                ListTile(
                  dense: true,
                  title: Text(
                    'Popup Notification',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'No popup',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Light
                ListTile(
                  dense: true,
                  title: Text(
                    'Light',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'White',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Use high priority notifications
                ListTile(
                  isThreeLine: true,
                  title: Text(
                    'Use high priority notifications',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Show previews of notifications at the\ntop of the screen',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey,letterSpacing: 0.5
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.toggleOn, color: Theme.of(context).accentColor,
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 20.0,
                ),

                //Calls
                Text(
                  'Calls',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                //Ringtone
                ListTile(
                  dense: true,
                  title: Text(
                    'Ringtone',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Default ringtone (Huawei Tune)',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Vibrate
                ListTile(
                  dense: true,
                  title: Text(
                    'Vibrate',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Default',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/settings_account_page.dart';
import 'package:whatsapp_clone/settings_chats_page.dart';
import 'package:whatsapp_clone/settings_data_and_storage_page.dart';
import 'package:whatsapp_clone/settings_help.dart';
import 'package:whatsapp_clone/settings_notifications_page.dart';
import 'package:whatsapp_clone/settings_profile_page.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  child: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('Assets/Images/khalid.jpg'),
                  ),
                ),
                title: Text(
                  'Khalid Hossain',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black,
                    fontSize: 20.0, letterSpacing: 0.5,
                  ),
                ),
                subtitle: Text(
                  'Work hard, success will come',
                  style: TextStyle(
                    color: Colors.grey, fontSize: 14.0,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => SettingsProfilePage(),
                  ));
                },
              ),
              Divider(
                height: 15.0,
              ),

              //Account
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => SettingsAccountPage(),
                  ));
                },
                leading: Icon(
                  FontAwesomeIcons.key,
                  size: 22.0, color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                subtitle: Text(
                  'Privacy, security, change number',
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.grey
                  ),
                ),
              ),

              //Chats
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => SettingsChatsPage(),
                  ));
                },
                leading: Icon(
                  Icons.chat,
                  size: 25.0, color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Chats',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                subtitle: Text(
                  'Theme, wallpapers, chat history',
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.grey
                  ),
                ),
              ),

              //Notifications
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => SettingsNotificationsPage()),
                  );
                },
                leading: Icon(
                  Icons.notifications,
                  size: 25.0, color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                subtitle: Text(
                  'Message, group, & call tones',
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.grey
                  ),
                ),
              ),

              //Data and storage usage
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => SettingsDataAndStoragePage()),
                  );
                },
                leading: Icon(
                  Icons.data_usage,
                  size: 25.0, color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Data and storage usage',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                subtitle: Text(
                  'Network usage, auto-download',
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.grey
                  ),
                ),
              ),

              //Help
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => SettingsHelpPage()),
                  );
                },
                leading: Icon(
                  Icons.help_outline,
                  size: 25.0, color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                subtitle: Text(
                  'FAQ, contact us, privacy policy',
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.grey
                  ),
                ),
              ),
              Divider(
                height: 15.0,
                indent: 70.0,
              ),

              //Invite a friend
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.group,
                  size: 25.0, color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  'Invite a friend',
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),

              //From Facebook
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 40.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'from',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Facebook'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0, letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


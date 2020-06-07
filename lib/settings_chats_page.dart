import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/settings_chat_chatbackup.dart';
import 'package:whatsapp_clone/settings_chat_chathistory.dart';

class SettingsChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chats',
        ),
      ),
      body: ListView(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(left: 15.0, top: 10.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 //Display
                 Padding(
                   padding: const EdgeInsets.only(left:15.0),
                   child: Text(
                     'Display',
                     style: TextStyle(
                         color: Theme.of(context).accentColor, fontSize: 15.0,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                 ),
                 //Theme
                 ListTile(
                   dense: true,
                   enabled: true,
                   leading: Icon(
                     Icons.lock,
                     size: 25.0, color: Theme.of(context).primaryColor,
                   ),
                   title: Text(
                     'Theme',
                     style: TextStyle(
                       fontSize: 17.0, letterSpacing: 0.3,
                     ),
                   ),
                   subtitle: Text(
                     'Light',
                     style: TextStyle(
                       color: Colors.grey,
                     ),
                   ),
                   onTap: (){},
                 ),
                 //Wallpaper
                 ListTile(
                   dense: true,
                   enabled: true,
                   leading: Icon(
                     Icons.wallpaper,
                     size: 25.0, color: Theme.of(context).primaryColor,
                   ),
                   title: Text(
                     'Wallpaper',
                     style: TextStyle(
                       fontSize: 17.0, letterSpacing: 0.3,
                     ),
                   ),
                   onTap: (){},
                 ),
                 Divider(
                   height: 10.0,
                 ),

                 //Chat Settings
                 Padding(
                   padding: const EdgeInsets.only(left:15.0),
                   child: Text(
                     'Chat settings',
                     style: TextStyle(
                         color: Theme.of(context).accentColor, fontSize: 15.0,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:30.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       //Enter is Send
                       ListTile(
                         dense: true,
                         title: Text(
                           'Enter is send',
                           style: TextStyle(
                             fontSize: 16.0,
                           ),
                         ),
                         subtitle: Text(
                           'Enter key will send your message',
                           style: TextStyle(
                               fontSize: 13.0, color: Colors.grey,letterSpacing: 0.3
                           ),
                         ),
                         trailing: Icon(
                           FontAwesomeIcons.toggleOff, color: Theme.of(context).accentColor,
                         ),
                         onTap: (){},
                       ),
                       //Media Visibility
                       ListTile(
                         dense: true,
                         title: Text(
                           'Media visibility',
                           style: TextStyle(
                             fontSize: 16.0,
                           ),
                         ),
                         subtitle: Text(
                           'Show newly downloaded media in your phone\'s gallery',
                           style: TextStyle(
                               fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                           ),
                         ),
                         trailing: Icon(
                           FontAwesomeIcons.toggleOn, color: Theme.of(context).accentColor,
                         ),
                         onTap: (){},
                       ),
                       //Font Size
                       ListTile(
                         dense: true,
                         title: Text(
                           'Font size',
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
                       //App Language
                       ListTile(
                         dense: true,
                         title: Text(
                           'App Language',
                           style: TextStyle(
                             fontSize: 16.0,
                           ),
                         ),
                         subtitle: Text(
                           'Phone\'s language (English)',
                           style: TextStyle(
                               fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                           ),
                         ),
                         onTap: (){},
                       ),
                     ],
                   ),
                 ),
                 Divider(
                   height: 10.0,
                 ),

                 //Chat Backup
                 ListTile(
                   dense: true,
                   leading: Icon(
                     Icons.backup,
                     size: 25.0, color: Theme.of(context).primaryColor,
                   ),
                   title: Text(
                     'Chat backup',
                     style: TextStyle(
                       fontSize: 17.0, letterSpacing: 0.3,
                     ),
                   ),
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute
                       (builder: (context) => SettingsChatBackup()),
                     );
                   },
                 ),
                 //Chat History
                 ListTile(
                   dense: true,
                   leading: Icon(
                     Icons.history,
                     size: 25.0, color: Theme.of(context).primaryColor,
                   ),
                   title: Text(
                     'Chat history',
                     style: TextStyle(
                       fontSize: 17.0, letterSpacing: 0.3,
                     ),
                   ),
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute
                       (builder: (context) => SettingsChatHistoryPage()),
                     );
                   },
                 ),
               ],
             ),
           ),
         ],
      ),
    );
  }
}

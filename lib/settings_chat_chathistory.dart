import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsChatHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat History',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            //Export Chat
            ListTile(
              leading: Icon(
                FontAwesomeIcons.fileExport,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Export chat',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){},
            ),

            //Archive All Chats
            ListTile(
              leading: Icon(
                Icons.archive,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Archive all chat',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){},
            ),

            //Clear All chats
            ListTile(
              leading: Icon(
                Icons.do_not_disturb_on,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Clear all chat',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onTap: (){},
            ),

            //Delete All Chats
            ListTile(
              leading: Icon(
                Icons.delete,
                size: 30.0, color: Theme.of(context).primaryColor,
              ),
              title: Text(
                'Delete all chats',
                style: TextStyle(
                  fontSize: 18.0,
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

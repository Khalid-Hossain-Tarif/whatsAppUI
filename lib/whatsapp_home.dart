import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/settings_starred_message_page.dart';
import 'package:whatsapp_clone/status_screen.dart';
import 'package:whatsapp_clone/whatsapp_web_page.dart';

import 'calls_screen.dart';
import 'cameras_screen.dart';
import 'chats_screen.dart';
import 'package:whatsapp_clone/settings_page.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  //App Exit Confirmation Popup
  showExitPopup(){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            elevation: 5,
            backgroundColor: Colors.pink,
            title: Text(
              'Confirm Please',
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              'Do you want to exit?',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              RaisedButton(
                splashColor: Colors.teal,
                color: Colors.white,
                child: Text(
                  'Yes',
                  style: TextStyle(color: Theme.of(context).primaryColor,),
                ),
                onPressed: (){
                  SystemNavigator.pop();
                },
              ),
              RaisedButton(
                splashColor: Colors.white,
                color: Theme.of(context).primaryColor,
                child: Text(
                  'No',
                  style: TextStyle(color: Colors.white,),
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=> showExitPopup(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          elevation: 0.7,
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('New Group'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text('New Broadcast'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text('WhatsApp Web'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WhatsAppWebPage(),
                                ));
                          },
                        ),
                        ListTile(
                          title: Text('Starred Messages'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SettingsStarredMessagesPage()),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('Settings'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SettingsPage(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ];
              },
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "chats".toUpperCase(),
              ),
              Tab(
                text: "status".toUpperCase(),
              ),
              Tab(
                text: "calls".toUpperCase(),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}

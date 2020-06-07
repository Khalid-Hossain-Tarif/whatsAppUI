import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_model.dart';
import 'package:whatsapp_clone/settings_page.dart';
import 'package:whatsapp_clone/settings_starred_message_page.dart';
import 'package:whatsapp_clone/whatsapp_web_page.dart';
import 'chat_screen_chatpage.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context,i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) =>ChatScreenChatPage()),
                );
              },
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[i].time,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[i].message,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: () => print("Chat"),
      ),
    );
  }
}
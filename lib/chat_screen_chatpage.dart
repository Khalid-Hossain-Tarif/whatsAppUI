import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/chat_screen_chatpage_mediadocslink.dart';

class ChatScreenChatPage extends StatefulWidget {
  @override
  _ChatScreenChatPageState createState() => _ChatScreenChatPageState();
}

class _ChatScreenChatPageState extends State<ChatScreenChatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              child: Icon(FontAwesomeIcons.userAlt, color: Colors.white,),
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Name',
            ),
          ],
        ),
        titleSpacing: 0.0,
        actions: <Widget>[
          //Video
          IconButton(
            icon: Icon(Icons.videocam, color: Colors.white,),
            onPressed: (){},
          ),
          SizedBox(
            width: 10.0,
          ),

          //Call
          IconButton(
            icon: Icon(Icons.call, color: Colors.white,),
            onPressed: (){},
          ),
          SizedBox(
            width: 10.0,
          ),
          //PopupMenu Button
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  child: Column(
                    children: <Widget>[

                      //View contact
                      ListTile(
                        title: Text('View contact'),
                        onTap: () {},
                      ),

                      //Media, links and docs
                      ListTile(
                        title: Text('Media, links and docs'),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute
                            (builder: (context) =>ChatScreenChatPageMediaDocsLink()),
                          );
                        },
                      ),

                      //Search
                      ListTile(
                        title: Text('Search'),
                        onTap: () {},
                      ),

                      //Mute notifications
                      ListTile(
                        title: Text('Mute notifications'),
                        onTap: () {},
                      ),

                      //Wallpaper
                      ListTile(
                        title: Text('Wallpaper'),
                        onTap: () {},
                      ),

                      //More
                      ListTile(
                        leading: Text(
                            'More'
                        ),
                        trailing: Icon(Icons.arrow_right),
                        onTap: () {

                        },
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/Images/whatsapp_bg.jpg'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat
          ),
        ),
        child: ListView(
          children: <Widget>[
            //Hi
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 150.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Hi...'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Hello
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 200.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Hello...',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            //What are you doing now?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 200.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                      'What are you doing now?'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Trying to build WhatsApp Mobile Application
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 200.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Trying to build WhatsApp Mobile Application',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            //ohhh, Great!!!
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 80.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                      'ohhh, Great!!!'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Which framework you are using?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 200.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Which framework you are using?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Flutter!!!
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 80.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                      'Flutter!!!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //What about you?
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 150.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'What about you?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            //Well, I'm trying to learn react native
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 180.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                      'Well, I\'m trying to learn react native'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Great!!! Okay, bye for now
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 55.0,
                  width: 170.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Great!!! Okay, bye for now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Okay, talk later
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 150.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                      'Okay, talk later'
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            //Take Love!
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 100.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Take Love!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            //Taken. Love to you!!!'
            /*Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 180.0,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                      'Taken. Love to you!!!',
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5.0, left: 20.0, right: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: TextFormField(
                cursorColor: Theme.of(context).primaryColor,
                cursorWidth: 2,
                autofocus: true ,
                decoration: InputDecoration(
                  isDense: false,
                  contentPadding: EdgeInsets.only(top:0.0, left: 10.0,
                      right: 5.0,bottom: 5.0),
                  hintText: 'Type a message',
                 alignLabelWithHint: true,
                 hintStyle: TextStyle(
                   fontSize: 17.0,
                 ),
                  border: InputBorder.none,
                  prefix: Padding(
                    padding: const EdgeInsets.only(right: 5.0,),
                    child: Icon(
                      FontAwesomeIcons.smileBeam,size: 25.0,color: Colors.grey,
                    ),
                  ),
                  suffix: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.insert_link,size: 30.0,color: Colors.grey,),
                          onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.camera_alt,size: 25.0,color: Colors.grey,),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Theme.of(context).primaryColor,
              splashColor: Colors.white,
              child: Icon(
                Icons.keyboard_voice, color: Colors.white,
              ),
            ),
            flex: 0,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

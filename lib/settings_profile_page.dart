import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsProfilePage extends StatefulWidget {
  @override
  _SettingsProfilePageState createState() => _SettingsProfilePageState();
}

class _SettingsProfilePageState extends State<SettingsProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.noRepeat,
                        image: AssetImage('Assets/Images/khalid.jpg'),
                      ),
                    )
                  ),
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      child: IconButton(
                        splashColor: Theme.of(context).primaryColor,
                        icon: Icon(
                          Icons.camera_alt,
                          size: 20.0,
                          color: Colors.white,
                        ),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 30.0, color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.grey
                    ),
                  ),
                  subtitle: Text(
                    'Khalid Hossain',
                    style: TextStyle(
                      fontSize: 16.0, letterSpacing: 0.3,
                         color: Colors.black
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit, color: Colors.grey,
                  ),
                  onTap: (){},
                ),
                Container(
                  margin: EdgeInsets.only(left: 70.0,),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'This is not your username or pin. This name '
                            'will be visible to your WhatsApp contacts.',
                        style: TextStyle(
                          color: Colors.grey, fontSize: 13.0,
                        ),
                      ),
                      Divider(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    size: 30.0, color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.grey
                    ),
                  ),
                  subtitle: Text(
                    'Work hard, success will come',
                    style: TextStyle(
                      fontSize: 16.0, letterSpacing: 0.3,
                         color: Colors.black
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit, color: Colors.grey,
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 5.0,
                  indent: 70.0,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30.0, color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    'Phone',
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.grey
                    ),
                  ),
                  subtitle: Text(
                    '+880 1777-531675',
                    style: TextStyle(
                      fontSize: 16.0, letterSpacing: 0.3,
                         color: Colors.black
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit, color: Colors.grey,
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

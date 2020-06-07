import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('Assets/Images/khalid.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  right: 8.0,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    radius: 10.0,
                    child: Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'My Status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'Tap to add status update',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom:70),
              child: Align(
               alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  mini: true,
                  splashColor: Theme.of(context).accentColor,
                  elevation: 5,
                  heroTag: "Edit Button",
                  onPressed: (){},
                  child: Icon(Icons.edit, color: Theme.of(context).primaryColor,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                heroTag: "Camera Button",
                splashColor: Colors.white,
                elevation: 5,
                onPressed: (){},
                child: Icon(Icons.camera_alt, color: Colors.white,),
              ),
            ),
          ],
        ),floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}

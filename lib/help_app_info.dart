import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HelpAppInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('Assets/Images/whatsapp_bg.jpg'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'WhatsApp Messenger',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Version 2.20.64',
            style: TextStyle(
              color: Colors.white30,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Icon(
            FontAwesomeIcons.whatsapp,
            color: Theme.of(context).accentColor,
            size: 100.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '© 2010-2020 WhatsApp Inc.',
            style: TextStyle(
              color: Colors.white30,
              fontSize: 15.0,
            ),
          ),
         SizedBox(
           height: 50.0,
         ),
         Text(
           'licenses'.toUpperCase(),
           style: TextStyle(
             color: Colors.blue, decorationStyle: TextDecorationStyle.solid,
               fontSize: 20.0,
           ),
         ),
        ],
      ),
    );
  }
}

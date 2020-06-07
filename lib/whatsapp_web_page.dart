import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppWebPage extends StatefulWidget {

  @override
  _WhatsAppWebPageState createState() => _WhatsAppWebPageState();
}

class _WhatsAppWebPageState extends State<WhatsAppWebPage> {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Web'),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'To use WhatsApp Web, go to web.whatsapp.com on your computer.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey, letterSpacing: 1.0, fontSize: 17.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: deviceHeight*0.5,
              width: deviceWidth,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Image.asset("Assets/Images/qr_code.png"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.white,
        onPressed: (){},
        tooltip: 'Qr Code Scanner',
        child: Icon(
            Icons.settings_overscan, color: Colors.white,
        ),
      ),
    );
  }
}



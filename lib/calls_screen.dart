import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
                color: Colors.black54, letterSpacing: 1.0, fontSize: 17.0
            ),
            children: [
              TextSpan(text: 'To start calling contacts who have WhatsApp, tap at the bottom '),
              WidgetSpan(
                child: Icon(Icons.add_call, color: Theme.of(context).accentColor,),
              ),
              TextSpan(text: ' of your screen.',),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () => print("Call"),
      ),
    );
  }
}
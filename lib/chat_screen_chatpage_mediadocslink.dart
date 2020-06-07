
import 'package:flutter/material.dart';

class ChatScreenChatPageMediaDocsLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          title: Text('Name or Phone number',
          style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 3.0,
            tabs: [
              Tab(
                child: Text('Media',
                  style: TextStyle(fontSize: 17.0, color: Theme.of(context).primaryColor,),),
              ),
              Tab(
                child: Text('Docs',
                  style: TextStyle(fontSize: 17.0, color: Theme.of(context).primaryColor,),),
              ),
              Tab(
                child: Text('Link',
                  style: TextStyle(fontSize: 17.0, color: Theme.of(context).primaryColor,),),
              ),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              Icon(Icons.perm_media),
              Icon(Icons.insert_drive_file),
              Icon(Icons.link),
            ],
          ),
        ),
      ),
    );
  }
}

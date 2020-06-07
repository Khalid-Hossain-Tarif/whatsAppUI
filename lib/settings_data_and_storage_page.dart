import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsDataAndStoragePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data and storage usage',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Usage
                Text(
                  'Usage',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                //Network Usage
                ListTile(
                  dense: true,
                  title: Text(
                    'Network usage',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    '749 kB sent . 32.2 MB received',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //Storage usage
                ListTile(
                  dense: true,
                  title: Text(
                    'Storage usage',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    '45.3 MB',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 30.0,
                ),

                //Media auto-downloaded
                Text(
                  'Media auto-downloaded',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                //Voice Messages - Description
                Text(
                  'Voice messages are always auto-downloaded for the\nbest communication'
                      'experience',
                  style: TextStyle(
                    color: Colors.black54, fontSize: 14.0,
                  ),
                ),
                //When Using Mobile Data
                ListTile(
                  dense: true,
                  title: Text(
                    'When using mobile data',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Photos',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //When Connected On Wi-fi
                ListTile(
                  dense: true,
                  title: Text(
                    'When connected on Wi-fi',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'All Media',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                //When Roaming
                ListTile(
                  dense: true,
                  title: Text(
                    'When roaming',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'No media',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey, letterSpacing: 0.3
                    ),
                  ),
                  onTap: (){},
                ),
                Divider(
                  height: 30.0,
                ),

                //Call Settings
                Text(
                  'Call Settings',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
                //Low Data Usage
                ListTile(
                  isThreeLine: true,
                  title: Text(
                    'Low data usage',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text(
                    'Reduce the data used in a call',
                    style: TextStyle(
                        fontSize: 13.0, color: Colors.grey,letterSpacing: 0.3
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.toggleOff, color: Theme.of(context).accentColor,
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

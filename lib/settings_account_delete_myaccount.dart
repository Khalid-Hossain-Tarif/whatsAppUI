import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:whatsapp_clone/settings_account_changenumber.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class SettingsAccountDeleteMyAccount extends StatefulWidget {
  @override
  _SettingsAccountDeleteMyAccountState createState() =>
      _SettingsAccountDeleteMyAccountState();
}

class _SettingsAccountDeleteMyAccountState
    extends State<SettingsAccountDeleteMyAccount> {
  Country _selected;

  final testData = ["Delete your account from WhatsApp",
    "Erase your message history",
    "Delete you from all of your WhatsApp groups"
  ];

  @override
  Widget build(BuildContext context) {
    final _markDownData = testData.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    print(_markDownData);

    return Scaffold(
      appBar: AppBar(
        title: Text('Delete my account'),
      ),
      body: ListView(
        padding:
            EdgeInsets.all(10.0),
        children: <Widget>[
          //Deleting Account - Text
          ListTile(
            leading: Icon(
              Icons.error,
              color: Colors.red,
            ),
            title: Text(
              'Deleting your account will:',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 73.0, top: 0.0),
            height: 120,
            child: Markdown(
              data: _markDownData,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          //Change Number Instead
          ListTile(
            leading: Icon(
              Icons.phonelink_ring,
              color: Colors.teal,
            ),
            title: Text(
              'Change number instead?',
              style: TextStyle(
                letterSpacing: 0.3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 73.0, top: 0.0, right: 100.0),
            child: RaisedButton(
              child: Text(
                'change number'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Theme.of(context).accentColor,
              splashColor: Colors.white70,
              elevation: 5.0,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => SettingsAccountChangeNumber()),
                );
              },
            ),
          ),
          Divider(
            height: 40.0,
          ),

          //To delete your account - Text
          Padding(
            padding: const EdgeInsets.only(left: 73.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //To delete - Text
                Text(
                  'To delete your account, confirm your country code and enter your'
                      'phone number.',
                  style: TextStyle(
                    fontSize: 13.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                //Country
                Text(
                  'Country',
                  style: TextStyle(
                      color: Colors.black54, fontSize: 13.0
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CountryPicker(
                        dense: false,
                        showFlag: false, //displays flag, true by default
                        showDialingCode: false, //displays dialing code, false by default
                        showName: true, //displays country name, true by default
                        showCurrency: false, //eg. 'British pound'
                        showCurrencyISO: false,
                        nameTextStyle: TextStyle(
                          fontSize: 17.0,
                        ),
                        onChanged: (Country country) {
                          setState(() {
                            _selected = country;
                          });
                        },
                        selectedCountry: _selected,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 5.0,
                  thickness: 1.0, color: Colors.black,
                ),
                SizedBox(
                  height: 20.0,
                ),

                //Number
                Text(
                  'Number',
                  style: TextStyle(
                    color: Colors.black54, fontSize: 13.0
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 0,
                      child: CountryPicker(
                        dense: false,
                        showFlag: false, //displays flag, true by default
                        showDialingCode: true, //displays dialing code, false by default
                        showName: false, //displays country name, true by default
                        showCurrency: false, //eg. 'British pound'
                        showCurrencyISO: false,
                        dialingCodeTextStyle: TextStyle(
                          fontSize: 17.0,
                        ),//eg. 'GBP'
                        onChanged: (Country country) {
                          setState(() {
                            _selected = country;
                          });
                        },
                        selectedCountry: _selected,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.number,
                        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                        cursorColor: Colors.teal,
                        autofocus: false,
                        style: TextStyle(
                          color: Colors.black, fontSize: 17.0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'phone number',
                          isDense: true,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 0.3, fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),

                //Delete My Account
                RaisedButton(
                  child: Text(
                    'delete my account'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  splashColor: Colors.white70,
                  elevation: 5.0,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute
                      (builder: (context) => SettingsAccountChangeNumber()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

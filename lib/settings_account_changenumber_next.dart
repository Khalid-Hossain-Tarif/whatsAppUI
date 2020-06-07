import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class SettingsAccountChangeNumberNext extends StatefulWidget {
  @override
  _SettingsAccountChangeNumberNextState createState() => _SettingsAccountChangeNumberNextState();
}

class _SettingsAccountChangeNumberNextState extends State<SettingsAccountChangeNumberNext> {
  Country _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Number'),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 15.0, bottom: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Old Number
            Text(
              'Enter your old phone number with country code:',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17, color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: CountryPicker(
                    dense: false,
                    showFlag: true, //displays flag, true by default
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
                    autofocus: true,
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
              height:40.0,
            ),


            //New Number
            Text(
              'Enter your new phone number with country code:',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17, color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: CountryPicker(
                    dense: false,
                    showFlag: true, //displays flag, true by default
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
                    autofocus: true,
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
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        backgroundColor: Theme.of(context).accentColor,
        splashColor: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        label: Text(
          'Next'.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
          ),
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

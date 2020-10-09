import 'package:flutter/material.dart';
import 'package:brew_crew/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  //form values
  String _currentName;
  String _currentSugars;
  String _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            'Update your Coffee Brew settings',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) {
              setState(() {
                _currentName = val;
              });
            },
            decoration: textInputDecoration.copyWith(hintText: ('Name')),
          ),
          SizedBox(
            height: 20.0,
          ),
          //dropdown
          DropdownButtonFormField(
            decoration: textInputDecoration,
            value: _currentSugars ?? '0',
            items: sugars.map((sugar) {
              return DropdownMenuItem(
                child: Text('$sugar sugars'),
                value: sugar,
              );
            }).toList(),
            onChanged: (val) {
              setState(() {
                _currentSugars = val;
              });
            },
          ),

          SizedBox(
            height: 20.0,
          ),
          //slider
          RaisedButton(
            color: Colors.pink[400],
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugars);
              print(_currentStrength);
            },
          )
        ],
      ),
    );
  }
}

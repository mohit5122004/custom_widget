import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  List Dropdownlist  = [
    {"title" : "BCA", "value" : "1"},
    {"title" : "B.COM", "value" : "2"},
    {"title" : "BBA", "value" : "3"},
    {"title" : "MBA", "value" : "4"},
    {"title" : "DCA", "value" : "5"},
  ];

  late String valueChoose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: DropdownButton(
          hint: Text('Select item'),

          value: valueChoose,
          onChanged: (  newValue) {
            setState(() {
              valueChoose = (newValue );
            });
          },
          items: Dropdownlist.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      ),
    );
  }
}

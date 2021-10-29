// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {
  @override
  _SearchOptionState createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  var optionMap = <String, bool>{
    'Development': true,
    'Business': false,
    'Data ': false,
    'Design': false,
    'Operation': false,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
        height: 25,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 25),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      var res = optionMap[keys[index]] ?? false;
                      optionMap[keys[index]] = !res;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        color: optionMap[keys[index]] != null &&
                                optionMap[keys[index]] == true
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: Row(
                      children: [
                        Text(
                          keys[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: optionMap[keys[index]] != null &&
                                    optionMap[keys[index]] == true
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        if (optionMap[keys[index]] != null &&
                            optionMap[keys[index]] == true)
                          Row(
                            children: [
                              SizedBox(width: 5),
                              Icon(Icons.close, size: 15, color: Colors.white),
                            ],
                          )
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 10,
                ),
            itemCount: optionMap.length));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.search_rounded)),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.filter),
          )
        ],
      ),
    );
  }
}

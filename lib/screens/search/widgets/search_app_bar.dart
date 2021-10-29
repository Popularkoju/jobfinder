// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jobfinder/screens/home/home.dart';

class SearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, right: 10),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.notifications_none_outlined,
                        size: 30, color: Colors.grey),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          //child: Text(''),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 30),
              Icon(Icons.more_horiz_rounded)
            ],
          )
        ],
      ),
    );
  }
}

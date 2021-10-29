// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Welcome Home',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Popular Koju',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  right: 10,
                ),
                transform: Matrix4.rotationX(100),
                child: Stack(children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: (Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      )))
                ]),
              ),
              ClipOval(
                child: Image.asset('assets/images/avatar.png',
                    width: 40, height: 40),
              )
            ],
          ),
        ],
      ),
    );
  }
}

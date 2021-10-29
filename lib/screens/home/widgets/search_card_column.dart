// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jobfinder/screens/search/search.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      // color: Colors.amber[400],
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        // image: DecorationImage(
        //     image: AssetImage(
        //       'assets/images/search_bg1.jpeg',
        //     ),
        //     fit: BoxFit.cover)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Search quickly for required job ',
            style: TextStyle(
                height: 1.8,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('search')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

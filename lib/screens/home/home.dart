// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jobfinder/screens/home/widgets/home_app_bar.dart';
import 'package:jobfinder/screens/home/widgets/job_list.dart';
import 'package:jobfinder/screens/home/widgets/search_card_column.dart';
import 'package:jobfinder/screens/home/widgets/tag_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 20,
                ),
                label: ('Home')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.cases_outlined,
                  size: 20,
                ),
                label: ('Case')),
            BottomNavigationBarItem(icon: Text(''), label: ('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                  size: 20,
                ),
                label: ('chat')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 20,
                ),
                label: ('person')),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [HomeAppBar(), SearchCard(), tagList(), jobList()],
                ),
              )
            ],
          ),
        ));
  }
}

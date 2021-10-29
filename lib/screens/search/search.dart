// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:jobfinder/screens/search/widgets/search_app_bar.dart';
import 'package:jobfinder/screens/search/widgets/search_input.dart';
import 'package:jobfinder/screens/search/widgets/search_list.dart';
import 'package:jobfinder/screens/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(children: [
        Row(children: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey.withOpacity(0.1),
              )),
        ]),
        Column(children: [
          SearchAppBar(),
          SearchInput(),
          SearchOption(),
          Expanded(child: SearchList()),
        ])
      ]),
    );
  }
}

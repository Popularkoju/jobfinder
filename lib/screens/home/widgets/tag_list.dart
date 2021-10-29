import 'package:flutter/material.dart';

class tagList extends StatefulWidget {
  @override
  _tagListState createState() => _tagListState();
}

class _tagListState extends State<tagList> {
  final tagsList = <String>['All', '⚡ Popular', '⭐ Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: BoxDecoration(
                    color: selected == index
                        ? Theme.of(context).primaryColor.withOpacity(0.2)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    border: Border.all(
                      color: selected == index
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    )),
                child: Text(tagsList[index]),
              )),
          separatorBuilder: (_, index) => SizedBox(width: 15),
          itemCount: tagsList.length),
    );
  }
}

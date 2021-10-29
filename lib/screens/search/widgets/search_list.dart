// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jobfinder/models/job.dart';
import 'package:jobfinder/screens/home/widgets/job_item.dart';
import 'package:jobfinder/screens/home/widgets/job_list.dart';

class SearchList extends StatelessWidget {
  final jobList = Job.generateJob();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: ListView.separated(
          itemBuilder: (context, index) => jobItem(
                jobList[index],
                showTime: true,
              ),
          separatorBuilder: (_, index) => SizedBox(
                height: 10,
              ),
          itemCount: jobList.length),
    );
  }
}

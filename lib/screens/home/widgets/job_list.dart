// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jobfinder/models/job.dart';
import 'package:jobfinder/screens/home/widgets/job_details.dart';
import 'package:jobfinder/screens/home/widgets/job_item.dart';

class jobList extends StatelessWidget {
  final joblist = Job.generateJob();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetails(joblist[index]));
              },
              child: jobItem(joblist[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: joblist.length),
    );
  }
}

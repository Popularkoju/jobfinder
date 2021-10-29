// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jobfinder/models/job.dart';
import 'package:jobfinder/widgets/icon_text.dart';

class JobDetails extends StatelessWidget {
  final Job job;
  JobDetails(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.all(25),
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 60,
                color: Colors.grey.withOpacity(0.2),
              ),
              SizedBox(height: 20),
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      // padding: EdgeInsets.all(8),
                      child: Image.asset(job.logoUrl),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Text(job.company,
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(
                      job.isMark ? Icons.bookmark : Icons.bookmarks_outlined,
                      color: job.isMark
                          ? Theme.of(context).primaryColor
                          : Colors.black,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.more_horiz_outlined),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(job.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(Icons.location_on_outlined, job.location),
                IconText(Icons.access_time_outlined, job.time),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'REQUIREMENTS:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ...job.req
                .map((e) => Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          ConstrainedBox(
                              constraints: BoxConstraints(maxHeight: 300),
                              child: Text(
                                e,
                                style:
                                    TextStyle(wordSpacing: 2.5, fontSize: 10),
                              ))
                        ],
                      ),
                    ))
                .toList(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              height: 45,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text("Apply Now"),
              ),
            )
          ])
        ],
      ),
    );
  }
}

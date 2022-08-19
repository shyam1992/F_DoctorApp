// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 0))
      ]),
      height: 110,
      child: Row(
        children: [
          Flexible(
              flex: 16,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: const Color(0xff242734),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        foregroundImage: AssetImage('images/doc1.png'),
                        radius: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dr.Lydia',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  letterSpacing: 1.0),
                            ),
                            Text(
                              'General practitioner',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 12,
                                  letterSpacing: 1.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Flexible(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                decoration: BoxDecoration(
                    color: const Color(0xff3B60F7),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                alignment: Alignment.centerRight,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '5.0 Rating',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

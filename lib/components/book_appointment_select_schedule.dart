import 'package:flutter/material.dart';

class BookAppointmentSelectSchedule extends StatelessWidget {
  BookAppointmentSelectSchedule({
    Key? key,
  }) : super(key: key);

  final List timeArray = [
    '10:00 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 AM',
    '12:30 PM',
    '01:00 PM',
    '01:30 PM',
    '02:00 PM',
    '03:00 PM',
    '03:30 PM',
    '04:00 PM',
    '04:30 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            height: 200,
            decoration: BoxDecoration(
                color: const Color(0xff242734),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Select Schedule Time',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 4,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 2,
                    children: timeArray
                        .map((e) => Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white, width: 0.5)),
                            child: Text(
                              e,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

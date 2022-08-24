import 'package:flutter/material.dart';

class BookAppointmentHeader extends StatelessWidget {
  const BookAppointmentHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            child: Icon(Icons.keyboard_arrow_left_outlined),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          flex: 1,
        ),
        Flexible(
          child: Center(
              child: Text(
            'Book an appointment',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          )),
          flex: 10,
        ),
        Flexible(
          child: SizedBox(),
          flex: 1,
        )
      ],
    );
  }
}

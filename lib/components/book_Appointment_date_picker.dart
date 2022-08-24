import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class BookAppointmentDatePicker extends StatefulWidget {
  const BookAppointmentDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  State<BookAppointmentDatePicker> createState() =>
      _BookAppointmentDatePickerState();
}

class _BookAppointmentDatePickerState extends State<BookAppointmentDatePicker> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            height: 140,
            decoration: BoxDecoration(
                color: const Color(0xff242734),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Select Date',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Container(
                child: DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: const Color(0xff3B5ff7),
                  selectedTextColor: Colors.white,
                  dateTextStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  dayTextStyle: TextStyle(color: Colors.white),
                  monthTextStyle: TextStyle(color: Colors.white),
                  inactiveDates: [],
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

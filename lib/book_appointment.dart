import 'package:flutter/material.dart';
import 'package:app_2/components/page_background.dart';
import './components/book_appointment_header.dart';
import 'components/book_Appointment_date_picker.dart';
import 'components/book_appointment_doctor_detail.dart';
import 'components/book_appointment_select_schedule.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1D2A),
      body: Stack(
        children: [
          PageBackground(),
          SafeArea(
              child: Column(
            children: [
              BookAppointmentHeader(),
              BookAppointmentDoctorDetail(),
              BookAppointmentDatePicker(),
              BookAppointmentSelectSchedule(),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff3B5ff7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text(
                          'Book an Appointment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

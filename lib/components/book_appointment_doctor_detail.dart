import 'package:flutter/material.dart';

class BookAppointmentDoctorDetail extends StatelessWidget {
  const BookAppointmentDoctorDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Dr.Martin Carder',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Colors.white),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 40),
                    height: 30,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xff2E69C0),
                    ),
                    child: Text(
                      'Dentist',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  width: 200,
                  height: 40,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: const Color(0xff3B5ff7),
                      ),
                      Text(
                        'Call',
                        style: TextStyle(color: const Color(0xff3B5ff7)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: const Color(0xff3B5ff7),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(color: const Color(0xff3B5ff7)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -30,
            left: 10,
            child: Image(
              image: AssetImage('images/doc3.png'),
              height: 320,
            ),
          )
        ],
      ),
    );
  }
}

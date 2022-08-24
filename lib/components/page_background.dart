import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  const PageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xff1C1D2A),
        ),
        Opacity(
          opacity: 0.2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              border: Border.all(width: 0),
              color: const Color(0xff1A1F17),
            ),
            height: 310,
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              border: Border.all(width: 0),
              color: const Color(0xff182444),
            ),
            height: 290,
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
              border: Border.all(width: 0),
              color: const Color(0xff172751),
            ),
            height: 270,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200)),
            border: Border.all(width: 0),
            color: const Color(0xff3960EE),
          ),
          height: 250,
        ),
      ],
    );
  }
}

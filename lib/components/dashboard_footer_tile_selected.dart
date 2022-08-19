import 'package:flutter/material.dart';

class DashboardFooterTileSelected extends StatelessWidget {
  const DashboardFooterTileSelected({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff3B60F7),
      ),
      width: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.emoji_people,
              color: Colors.white,
              size: 40,
            ),
            Text(
              'Consultation',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

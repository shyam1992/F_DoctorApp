import 'package:flutter/material.dart';

class DashboardActions extends StatelessWidget {
  const DashboardActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Top Doctor',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          width: 100,
          height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(5)),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'See more',
                  style: TextStyle(
                      color: const Color(0xff3D67FB),
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.chevron_right_sharp,
                  color: const Color(0xff3D67FB),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

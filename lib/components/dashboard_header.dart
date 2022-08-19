import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Flexible(
        flex: 2,
        child: Icon(
          Icons.menu,
          color: Colors.white,
          size: 40,
        ),
      ),
      Flexible(
        flex: 8,
        fit: FlexFit.loose,
        child: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 20, fontFamily: 'WorkSans'),
                children: [
              TextSpan(text: 'Hello,'),
              TextSpan(
                  text: ' John Zaire!',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ])),
      ),
      Flexible(
          flex: 2,
          child: CircleAvatar(
            foregroundImage: AssetImage('images/doc1.png'),
            radius: 24,
            backgroundColor: Colors.blue,
          ))
    ]);
  }
}

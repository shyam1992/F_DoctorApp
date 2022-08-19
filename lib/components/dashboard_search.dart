import 'package:flutter/material.dart';

class DashboardSearchField extends StatelessWidget {
  const DashboardSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                )),
          ),
        )
      ],
    );
  }
}

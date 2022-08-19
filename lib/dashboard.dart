// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import './components/dashboard_background.dart';
import './components/doctor_tile.dart';
import './components/dashboard_header.dart';
import './components/dashboard_search.dart';
import './components/dashboard_actions.dart';
import 'components/dashboard_footer_tile.dart';
import 'components/dashboard_footer_tile_selected.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        DashoardBackground(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DashboardHeader(),
                SizedBox(
                  height: 20,
                ),
                DashboardSearchField(),
                SizedBox(
                  height: 20,
                ),
                DashboardActions(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    DoctorTile(),
                    SizedBox(
                      height: 10,
                    ),
                    DoctorTile(),
                    SizedBox(
                      height: 10,
                    ),
                    DoctorTile()
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'What Do You Need?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DashboardFooterTileSelected(),
                      DashboardFooterTile(),
                      DashboardFooterTile(),
                      DashboardFooterTile(),
                      DashboardFooterTile(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

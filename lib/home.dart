import 'package:basketball_points_counter/ev_btn.dart';
import 'package:basketball_points_counter/team_section.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int countA = 0;
  int countB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Counter', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamSection(teamCounter: countA, teamName: 'Team A'),
              SizedBox(
                height: 380,
                child: VerticalDivider(width: 5)
              ),
              TeamSection(teamCounter: countB, teamName: 'Team B'),
            ],
          ),
          Spacer(flex: 1,),
          ElevationBTN(
            txt: 'Reset',
            onp: () {
              setState(() {
                countA = 0;
                countB = 0;
              });
            },
          ),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}

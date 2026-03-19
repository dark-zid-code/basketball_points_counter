import 'package:basketball_points_counter/ev_btn.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TeamSection extends StatefulWidget {
  int teamCounter;
  String teamName;
  TeamSection({super.key, required this.teamCounter, required this.teamName});

  @override
  State<TeamSection> createState() => _TeamSectionState();
}

class _TeamSectionState extends State<TeamSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16,),
        Text(
          widget.teamName,
          style: TextStyle(
            fontSize: 18
          ),
        ),
        const SizedBox(height: 16,),
        Text(
          '${widget.teamCounter}',
          style: TextStyle(
            fontSize: 150,
          ),
        ),
        ElevationBTN(
          txt: 'Add 1 Point',
          onp: () {
            setState(() {
              widget.teamCounter++;
            });
          }
        ),

        const SizedBox(height: 16,),

        ElevationBTN(
          txt: 'Add 2 Points',
          onp: () {
            setState(() {
              widget.teamCounter += 2;
            });
          }
        ),

        const SizedBox(height: 16,),

        ElevationBTN(
          txt: 'Add 3 Points',
          onp: () {
            setState(() {
              widget.teamCounter += 3;
            });
          }
        ),
      ],
    );
  }
}

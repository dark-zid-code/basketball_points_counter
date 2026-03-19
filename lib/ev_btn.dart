import 'package:flutter/material.dart';

class ElevationBTN extends StatelessWidget {
  final Color clr;
  final VoidCallback onp;
  final String txt;
  const ElevationBTN({required this.txt, required this.onp, this.clr = Colors.orange, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: clr,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(130, 40)
      ),
      onPressed: onp,
      child: Text(txt, style: TextStyle(color: Colors.white)),
    );
  }
}

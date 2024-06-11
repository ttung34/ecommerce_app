import 'package:flutter/material.dart';

class DealThree extends StatelessWidget {
  const DealThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 130,
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
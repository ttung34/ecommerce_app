import 'package:flutter/material.dart';

class DealOne extends StatelessWidget {
  const DealOne({super.key});

  @override
  // ignore: prefer_expression_function_bodies
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
      // ignore: prefer_const_constructors
      child: Column(
        // ignore: always_specify_types, prefer_const_literals_to_create_immutables
        children: [
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 5,),
            color: Colors.blue,
            // ignore: prefer_const_constructors
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: always_specify_types, prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Expanded(
                  // ignore: prefer_const_constructors
                  child: Text(
                    'DEAL CHẤT MÙA HÈ',
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // ignore: prefer_const_constructors
          Expanded(
                  // ignore: prefer_const_constructors
              child: Column(
                    // ignore: always_specify_types, prefer_const_literals_to_create_immutables
              children: [
                      // ignore: prefer_const_constructors
                Text(
                  "EURO",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight:FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Euro giải bóng đá vô địch châu âu',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 6,
                    fontWeight: FontWeight.normal, 
                  ),
                )
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Container(
            // ignore: prefer_const_constructors
            height: 18,
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Mua Ngay',
                    style: TextStyle(
                      fontSize: 10
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
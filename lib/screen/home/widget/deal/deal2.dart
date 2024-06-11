import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DealTwo extends StatelessWidget {
  const DealTwo({super.key});

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 170,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.blue.shade500,
            child:Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    'assets/icons/home_black.svg',
                    height: 10,
                    width: 10 ,
                  )
                )
              ],
            )
             
          )
        ],
      ),
    );
  }
}
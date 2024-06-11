import 'package:ecommerce_app/screen/home/widget/deal/deal1.dart';
import 'package:ecommerce_app/screen/home/widget/deal/deal2.dart';
import 'package:ecommerce_app/screen/home/widget/deal/deal3.dart';
import 'package:flutter/material.dart';

class DealMain extends StatelessWidget {
  const DealMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          DealOne(),
          DealTwo(),
          DealThree()
        ],
      ),
    );
  }
}
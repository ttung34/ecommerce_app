import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ShopeePayWidget extends StatelessWidget {
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            // ignore: prefer_const_constructors
            offset: Offset(0, 3),
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Expanded(
            flex: 1,
            // ignore: prefer_const_constructors
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.qr_code, // This is a placeholder icon
                  size: 30,
                  color: Colors.orange,
                ),
                // ignore: prefer_const_constructors
                SizedBox(width: 5),
                // ignore: prefer_const_constructors
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Ví ShopeePay',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'Voucher mua sắm giảm\nđến 40.000Đ',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(
            flex: 1,
            // ignore: prefer_const_constructors
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.attach_money, // This is a placeholder icon
                  size: 30,
                  color: Colors.orange,
                ),
                // ignore: prefer_const_constructors
                SizedBox(width: 5),
                // ignore: prefer_const_constructors
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      '0',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'Nhấn để nhận Xu mỗi ngày!',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

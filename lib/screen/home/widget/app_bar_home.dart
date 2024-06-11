import 'package:ecommerce_app/screen/home/widget/search_text/search_text_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMain({super.key});

  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      centerTitle: true,
      // ignore: prefer_const_constructors
      title: SearchTextField(),
      actions: <Widget> [
        SvgPicture.asset(
          'assets/icons/cart.svg',
          width: 25,
          height: 25,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          'assets/icons/sms.svg',
          width: 25,
          height: 25,
          fit: BoxFit.fitWidth,
        )
      // ignore: require_trailing_commas
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          color: const Color(0x1A000000),
          height: 1,
        ),
      ),
    );
  }

    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
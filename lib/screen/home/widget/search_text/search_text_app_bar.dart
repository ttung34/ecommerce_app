// ignore_for_file: public_member_api_docs, prefer_const_constructors, prefer_expression_function_bodies

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        validator: (String? value) {
          return null;
        },
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF262626),
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(11.25,11.25, 8, 10.75),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 14,
              height: 14,
            ),
          ),
          isDense: true,
          hintText: 'Search',
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0x993C3C43),
          ),
          fillColor: const Color(0x1F767688),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(10,11.25, 0, 10.75),
            child: SvgPicture.asset(
              'assets/icons/camera.svg',
              width: 25,
              height: 25,
            ),
          )
        // ignore: require_trailing_commas
        ),
        onChanged: (String? value){},
        onSaved: (String? value) {},
      ),
    );
  }
}
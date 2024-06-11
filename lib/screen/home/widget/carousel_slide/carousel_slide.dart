
import 'dart:async';
// ignore: unused_import
import 'dart:ffi';

import 'package:ecommerce_app/screen/home/widget/carousel_slide/image_placeholder.dart';
import 'package:flutter/material.dart';

class CarouselSlide extends StatefulWidget {
  const CarouselSlide({super.key});

  @override
  State<CarouselSlide> createState() => _CarouselSlideState();
}

  final List<String> imagePaths = [
    'assets/images/anh.jpeg',
    'assets/images/anh2.jpeg',
    'assets/images/anh3.jpeg',
    'assets/images/anh4.jpeg',
    'assets/images/anh5.jpg',
  ];

  late List<Widget> _pages;

  int _pageActive = 0;

  final PageController _pageController = PageController(initialPage: 0);

  Timer? _timer;

class _CarouselSlideState extends State<CarouselSlide> {
  @override

  // ignore: override_on_non_overriding_member
  void startTimer(){
    _timer = Timer.periodic(
      // ignore: prefer_const_constructors
      Duration(seconds: 3),
      (timer){
        if(_pageController.page == imagePaths.length - 1){
          // ignore: discarded_futures
          _pageController.animateToPage(
            0,
            // ignore: prefer_const_constructors
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }else{
          // ignore: discarded_futures
          _pageController.nextPage(
            // ignore: prefer_const_constructors
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
      }}
    );
  }

  // ignore: must_call_super, annotate_overrides
  void initState(){
    super.initState();
    _pages = List.generate(
        imagePaths.length,
        (index) => ImagePlaceholder(
          imagePath: imagePaths[index],
          
        ),
     );
     startTimer();
  }

  // ignore: annotate_overrides
  void dispose(){
    super.dispose();
    _timer?.cancel();
  }

  // ignore: annotate_overrides, prefer_expression_function_bodies
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/4,
            child: PageView.builder(
              controller: _pageController,
              itemCount: imagePaths.length,
              onPageChanged: (value){
                setState(() {
                  _pageActive = value;
                });
              },
              itemBuilder: (context, int index){
                return _pages[index];
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            // ignore: use_colored_box
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  // ignore: prefer_const_constructors
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: InkWell(
                        onTap: (){
                          // ignore: discarded_futures
                          _pageController.animateToPage(
                            index,
                            // ignore: prefer_const_constructors
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                        child: CircleAvatar(
                        radius: 4,
                        backgroundColor: _pageActive == index
                        ? Colors.black
                        : Colors.grey,
                      ),
                    ),
                    // ignore: prefer_const_constructor
                  ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class DetailsCarouselSliderDot extends StatelessWidget {
  final bool isActive;
  final slider;
  const DetailsCarouselSliderDot({
    Key? key,
    this.isActive = false,
    this.slider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 10,
        height: 10,
        margin: EdgeInsets.symmetric(
          horizontal: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Colors.white.withOpacity(0.5) : Colors.transparent,
          // color: Colors.red,
        ),
        child: Center(
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
      onTap: () {
        // print("a darle");
      },
    );
  }
}

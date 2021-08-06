import 'package:flutter/material.dart';

class DescriptionCarouselImg extends StatelessWidget {
  final int index;
  const DescriptionCarouselImg({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Center(
        child: Text(
          'Carousel $index',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

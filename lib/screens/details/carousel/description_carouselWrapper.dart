import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:women_shop/constants/conts.dart';
import 'package:women_shop/screens/details/carousel/description_carouselDot.dart';
import 'package:women_shop/screens/details/carousel/description_carouselImage.dart';
import 'package:women_shop/screens/details/carousel/description_carouselVideo.dart';

class DetailsCarouselSliderWrapper extends StatefulWidget {
  const DetailsCarouselSliderWrapper({Key key}) : super(key: key);

  @override
  _DetailsCarouselSliderWrapperState createState() =>
      _DetailsCarouselSliderWrapperState();
}

class _DetailsCarouselSliderWrapperState
    extends State<DetailsCarouselSliderWrapper> {
  List<int> slidersItems = [1, 2, 3, 4, 5];
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              aspectRatio: 16 / 13,
              viewportFraction: 1.1,
              onPageChanged: (index, reason) {
                _changeIndex(index);
              },
            ),
            items: slidersItems.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return i != 3
                        ? DescriptionCarouselImg(index: i)
                        : DescriptionCarouselVideo();
                  },
                );
              },
            ).toList(),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * pHorizontally,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: slidersItems.asMap().entries.map(
                  (e) {
                    return DetailsCarouselSliderDot(
                      slider: e.value,
                      isActive: e.key == currentIndex,
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

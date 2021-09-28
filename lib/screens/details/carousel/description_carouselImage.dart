import 'package:flutter/material.dart';
import 'package:women_shop/models/productsModel.dart';

class DescriptionCarouselImg extends StatelessWidget {
  final ProductGallery? item;
  const DescriptionCarouselImg({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(item!.url.toString()),
          fit: BoxFit.cover,
        ),
        color: Colors.black,
      ),
      // child: Center(
      //   child: Text(
      //     'Carousel 1',
      //     style: TextStyle(
      //       fontSize: 16.0,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}

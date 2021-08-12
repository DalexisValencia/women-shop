import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';
import 'package:women_shop/screens/details/carousel/description_carouselWrapper.dart';
import 'package:women_shop/screens/details/description/details_description.dart';
import 'package:women_shop/screens/details/details__actionsAppBar.dart';

class DetailsScreen extends StatelessWidget {
  final Function close;
  const DetailsScreen({
    Key key,
    this.close,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 60,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * pHorizontally,
          ),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                child: MaterialButton(
                  splashColor: Colors.red,
                  onPressed: () => close(),
                  color: Colors.transparent,
                  elevation: 0,
                  child: const Icon(Icons.arrow_back),
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              ActionsAppBar(),
            ],
          ),
        ),
      ),
      body: IntrinsicHeight(
        child: Container(
            height: (MediaQuery.of(context).size.height -
                80 -
                MediaQuery.of(context).padding.top),
            // constraints: BoxConstraints.expand(),
            // height: MediaQuery.of(context).size.height,
            // height: MediaQuery.of(context).size.height -
            //     (60 - MediaQuery.of(context).padding.top),
            // width: double.infinity,
            // height: double.infinity,
            // color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // color: Colors.black,
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: DetailsCarouselSliderWrapper(),
                  ),
                  DetailsDescription(),
                ],
              ),
            )),
      ),
    );
  }
}

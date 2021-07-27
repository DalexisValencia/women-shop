import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 60,
          color: Colors.orange,
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
              // Container(
              //   child: Container(
              //     width: 40,
              //     child: ElevatedButton(
              //       onPressed: () {},
              //       child: const Icon(Icons.arrow_back_ios),
              //       style: ElevatedButton.styleFrom(
              //         elevation: 0,
              //         padding: EdgeInsets.all(0),
              //         shape: new RoundedRectangleBorder(
              //           borderRadius: new BorderRadius.circular(100.0),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                width: 45,
                height: 45,
                // color: Colors.red,
                child: MaterialButton(
                  splashColor: Colors.red,
                  onPressed: () {},
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
    );
  }
}

class ActionsAppBar extends StatelessWidget {
  const ActionsAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 45,
              height: 45,
              // color: Colors.yellow,
              child: MaterialButton(
                splashColor: Colors.red,
                onPressed: () {},
                color: Colors.transparent,
                elevation: 0,
                child: const Icon(Icons.shopping_bag_outlined),
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red,
                ),
                width: 6,
                height: 6,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        SizedBox(
          width: 45,
          height: 45,
          child: MaterialButton(
            splashColor: Colors.red,
            onPressed: () {},
            color: Colors.transparent,
            elevation: 0,
            child: const Icon(Icons.download_outlined),
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        // SizedBox(
        //   width: 45,
        //   height: 45,
        //   child: MaterialButton(
        //     splashColor: Colors.red,
        //     onPressed: () {},
        //     child: const Icon(Icons.download_outlined),
        //     padding: EdgeInsets.all(0),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(50),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

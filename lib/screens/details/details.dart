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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Classic Jacket"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$80.00"),
                        Row(
                          children: [
                            Text("Save"),
                            Icon(Icons.favorite_border_outlined),
                          ],
                        )
                        // ...[
                        //   Text("Save"),
                        //   Icon(Icons.favorite_border_outlined),
                        // ]
                      ],
                    ),
                    ProductDescription()
                  ],
                ),
              ),
            ),
          ],
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
      ],
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Description"),
            Row(
              children: [
                Text("23 Rating"),
                Icon(Icons.star_rate_rounded),
                Icon(Icons.star_rate_rounded),
                Icon(Icons.star_rate_rounded),
                Icon(Icons.star_rate_rounded),
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            // ...[
            //   Text("23 Rating"),
            //   ...[
            //     Icon(Icons.star_rate_rounded),
            //     Icon(Icons.star_rate_rounded),
            //     Icon(Icons.star_rate_rounded),
            //     Icon(Icons.star_rate_rounded),
            //     Icon(Icons.star_outline_rounded),
            //   ]
            // ],
          ],
        ),
        Container(
          child: Text(
              "This a beautiful women classic jacket for you daily casual look and a party time"),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ButtonStyle(),
            onPressed: () {},
            child: Text("Add To Car"),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';

class ScrollBehaviorWidget extends StatefulWidget {
  const ScrollBehaviorWidget({
    Key key,
    this.onScrollChange,
  }) : super(key: key);
  final Function onScrollChange;

  @override
  _ScrollBehaviorWidgetState createState() => _ScrollBehaviorWidgetState();
}

class _ScrollBehaviorWidgetState extends State<ScrollBehaviorWidget> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        print("si hay scroll");
        // if (scrollNotification is ScrollStartNotification) {}
        if (scrollNotification is ScrollUpdateNotification) {
          widget.onScrollChange(scrollNotification.metrics.extentAfter);
        }
        // if (scrollNotification is ScrollEndNotification) {}
        return;
      },
      // child: SingleChildScrollView(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 9 / 12,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        mainAxisSpacing: MediaQuery.of(context).size.height * 0.02,
        crossAxisSpacing: MediaQuery.of(context).size.width * pHorizontally,
        children: List.generate(
          10,
          (index) => ProductCard(),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // border: Border.all(
          //   width: 1,
          //   color: Colors.black,
          // ),
          ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                // border: Border.all(
                //   color: Colors.red,
                //   width: 1,
                // ),
              ),
              child: Center(
                child: Text("card"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fashion Label",
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "name",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 50.00",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 18,
                    )
                    // MaterialButton(
                    //   elevation: 0,
                    //   height: 50,
                    //   minWidth: 50,
                    //   padding: EdgeInsets.all(0),
                    //   // color: Colors.red,
                    //   shape: CircleBorder(),
                    //   onPressed: () {},
                    //   child: Icon(Icons.favorite_border),
                    // )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

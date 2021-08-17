import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';

class StockAppBar extends StatelessWidget {
  const StockAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * pHorizontally,
      ),
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Colors.yellow,
            child: MaterialButton(
              splashColor: Colors.blue,
              minWidth: 30,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
              child: Icon(Icons.list),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Women's Tops",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "480 Items found",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: MaterialButton(
              splashColor: Colors.blue,
              minWidth: 30,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

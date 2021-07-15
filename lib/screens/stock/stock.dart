import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:women_shop/constants/conts.dart';
import 'package:women_shop/screens/stock/stock__filter.dart';
import 'package:women_shop/screens/stock/stock__scrollBehavior.dart';

class StockScreen extends StatelessWidget {
  const StockScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * pHorizontally,
          ),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          color: Colors.red,
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
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.list),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
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
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // color: Colors.yellow,
                child: MaterialButton(
                  splashColor: Colors.blue,
                  minWidth: 30,
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.red,
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
        ),
      ),
      body: StockBody(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: 2,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
              size: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 24,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class StockBody extends StatefulWidget {
  const StockBody({Key key}) : super(key: key);

  @override
  _StockBodyState createState() => _StockBodyState();
}

class _StockBodyState extends State<StockBody> {
  double filterContainerSize = 100; // min 60 max 100

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StockFilter(
            height: filterContainerSize,
          ),
          // Text(filterContainerSize.toString()),
          Expanded(
            child: ScrollBehaviorWidget(
              onScrollChange: (double value) {
                if (value > 60 && value < 100) {
                  setState(() {
                    filterContainerSize = value;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

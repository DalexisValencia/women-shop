import 'package:flutter/material.dart';
import 'package:women_shop/screens/stock/dropdown/stock__dropdown.dart';
import 'package:women_shop/styles/appBarText.dart';

class StockFilter extends StatefulWidget {
  final bool isExpanded;
  const StockFilter({
    Key? key,
    required this.isExpanded,
  }) : super(key: key);

  @override
  _StockFilterState createState() => _StockFilterState();
}

class _StockFilterState extends State<StockFilter> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 200,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.black,
          ),
          bottom: BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: widget.isExpanded ? 100 : 75,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                child: DropdownFilter(),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Filter",
                    textAlign: TextAlign.center,
                    style: AppBarTextFilter.title(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

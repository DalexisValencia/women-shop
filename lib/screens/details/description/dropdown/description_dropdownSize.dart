import 'package:flutter/material.dart';
import 'package:women_shop/styles/detailsText.dart';

class DetailsDropDownSize extends StatefulWidget {
  const DetailsDropDownSize({Key key}) : super(key: key);

  @override
  DetailsDropDownSizeState createState() => DetailsDropDownSizeState();
}

class DetailsDropDownSizeState extends State<DetailsDropDownSize> {
  String dropdownValue = 'Size';

  void _changeProperty(String property) {
    setState(() {
      dropdownValue = property;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 15,
      ),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        // color: Colors.blue,
      ),
      child: DropdownButton<String>(
        style: DetailsTextStyles.dropDownSize(context),
        isExpanded: true,
        underline: SizedBox(),
        icon: Container(
          margin: EdgeInsets.only(
            left: 3,
          ),
          child: Icon(
            Icons.arrow_drop_down_rounded,
            color: Colors.black,
          ),
        ),
        value: dropdownValue,
        items: ['Size', 'S', 'M', 'L', 'XL']
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  textAlign: TextAlign.center,
                ),
              ),
            )
            .toList(),
        onChanged: (val) {
          _changeProperty(val);
        },
      ),
    );
  }
}

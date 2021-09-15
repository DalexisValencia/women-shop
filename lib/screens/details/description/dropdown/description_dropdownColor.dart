import 'package:flutter/material.dart';
import 'package:women_shop/styles/detailsText.dart';

class DetailsDropDownColor extends StatefulWidget {
  const DetailsDropDownColor({Key? key}) : super(key: key);

  @override
  DetailsDropDownColorState createState() => DetailsDropDownColorState();
}

class DetailsDropDownColorState extends State<DetailsDropDownColor> {
  String dropdownValue = 'blue';

  void _changeProperty(String property) {
    setState(() {
      dropdownValue = property;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 7,
        bottom: 8,
        right: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Color",
              style: DetailsTextStyles.dropDownColorKey(context),
            ),
          ),
          DropdownButton<String>(
            underline: SizedBox(),
            icon: SizedBox(),
            style: DetailsTextStyles.dropDownColorVal(context),
            value: dropdownValue,
            items: ['blue', 'magenta', 'pink']
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
              _changeProperty(val ?? "");
            },
          ),
        ],
      ),
    );
  }
}

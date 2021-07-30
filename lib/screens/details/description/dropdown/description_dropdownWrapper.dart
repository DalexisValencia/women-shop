import 'package:flutter/material.dart';
import 'package:women_shop/screens/details/description/dropdown/description_dropdownColor.dart';
import 'package:women_shop/screens/details/description/dropdown/description_dropdownSize.dart';

class DetailsDescriptionSelector extends StatelessWidget {
  const DetailsDescriptionSelector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: DetailsDropDownColor(),
          ),
          Expanded(
            child: DetailsDropDownSize(),
          ),
        ],
      ),
    );
  }
}

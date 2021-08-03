import 'package:flutter/material.dart';
import 'package:women_shop/screens/details/description/dropdown/description_dropdownWrapper.dart';
// import 'package:women_shop/constants/conts.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Classic Jacket",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$80.00",
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 18,
                    ),
              ),
              MaterialButton(
                child: Row(
                  children: [
                    Text(
                      "Save",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(Icons.favorite_border_outlined),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
          DetailsDescriptionSelector(),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Description",
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
              Row(
                children: [
                  Text(
                    "23 Ratings",
                    style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.star_rate_rounded,
                    size: 17,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    size: 17,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    size: 17,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    size: 17,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Colors.grey,
                    size: 17,
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
              ),
            ),
            child: Text(
              "This a beautiful women classic jacket for you daily casual look and a party time",
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black,
                    fontSize: 13.6,
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 23,
            ),
            width: MediaQuery.of(context).size.width,
            child: MaterialButton(
              elevation: 2,
              color: Colors.grey[850],
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              onPressed: () {},
              child: Text(
                "Add To Car",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
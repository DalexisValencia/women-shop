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
      body: IntrinsicHeight(
        child: Container(
            height: (MediaQuery.of(context).size.height -
                80 -
                MediaQuery.of(context).padding.top),
            // constraints: BoxConstraints.expand(),
            // height: MediaQuery.of(context).size.height,
            // height: MediaQuery.of(context).size.height -
            //     (60 - MediaQuery.of(context).padding.top),
            // width: double.infinity,
            // height: double.infinity,
            color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 16 / 13,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  DetailsDescription(),
                ],
              ),
            )),
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

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Classic Jacket",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.yellow,
                ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$80.00",
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.yellow,
                      fontSize: 18,
                    ),
              ),
              Row(
                children: [
                  Text(
                    "Save",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.yellow,
                          fontSize: 18,
                        ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.favorite_border_outlined),
                ],
              )
            ],
          ),
          DetailsDescriptionSelector(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
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
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20,
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
            child: DetailsDopDownColor(),
          ),
          Expanded(
            child: DetailsDopDownSize(),
          ),
        ],
      ),
    );
  }
}

class DetailsDopDownColor extends StatefulWidget {
  const DetailsDopDownColor({Key key}) : super(key: key);

  @override
  DetailsDopDownColorState createState() => DetailsDopDownColorState();
}

class DetailsDopDownColorState extends State<DetailsDopDownColor> {
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
            child: Text("Color"),
          ),
          DropdownButton<String>(
            underline: SizedBox(),
            icon: SizedBox(),
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
              _changeProperty(val);
            },
          ),
        ],
      ),
    );
    ;
  }
}

class DetailsDopDownSize extends StatefulWidget {
  const DetailsDopDownSize({Key key}) : super(key: key);

  @override
  DetailsDopDownSizeState createState() => DetailsDopDownSizeState();
}

class DetailsDopDownSizeState extends State<DetailsDopDownSize> {
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

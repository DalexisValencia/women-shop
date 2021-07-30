import 'package:flutter/material.dart';

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

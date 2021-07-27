import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_back_ios),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: EdgeInsets.all(0),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0),
              ),
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 55,
            child: MaterialButton(
              splashColor: Colors.red,
              onPressed: () {},
              child: const Icon(Icons.shopping_bag_outlined),
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          SizedBox(
            width: 55,
            child: MaterialButton(
              splashColor: Colors.red,
              onPressed: () {},
              child: const Icon(Icons.download_outlined),
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

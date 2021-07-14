import 'package:flutter/material.dart';

class ScrollBehaviorWidget extends StatefulWidget {
  const ScrollBehaviorWidget({
    Key key,
    this.onScrollChange,
  }) : super(key: key);
  final Function onScrollChange;

  @override
  _ScrollBehaviorWidgetState createState() => _ScrollBehaviorWidgetState();
}

class _ScrollBehaviorWidgetState extends State<ScrollBehaviorWidget> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        // if (scrollNotification is ScrollStartNotification) {}
        if (scrollNotification is ScrollUpdateNotification) {
          widget.onScrollChange(scrollNotification.metrics.extentAfter);
        }
        // if (scrollNotification is ScrollEndNotification) {}
        return;
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red[200],
              width: MediaQuery.of(context).size.width,
              height: 400,
            ),
            Container(
              color: Colors.red[500],
              width: MediaQuery.of(context).size.width,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// class ScrollBehaviorWidget extends StatelessWidget {
//   const ScrollBehaviorWidget({
//     Key key,
//     this.onScrollChange,
//   }) : super(key: key);
//   final onScrollChange;
//   // const ScrollBehaviorWidget({ Key key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RaisedButton(
//         color: Colors.red,
//         child: Text("info..."),
//         onPressed: () {
//           onScrollChange();
//           // print("todo okas");
//         },
//       ),
//     );
//   }
// }
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
  // _onStartScroll(ScrollMetrics metrics) {
  //   // print("Scroll Start");
  //   changeScrollPosition(metrics.pixels);
  // }

  // _onUpdateScroll(ScrollMetrics metrics) {
  //   // print("Scroll Update");
  //   // print(metrics.pixels);
  //   changeScrollPosition(metrics.pixels);
  // }

  // _onEndScroll(ScrollMetrics metrics) {
  //   changeScrollPosition(metrics.pixels);
  // }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        // widget.onScrollChange(scrollNotification.metrics.pixels);
        // widget.onScrollChange(scrollNotification.metrics.pixels);

        if (scrollNotification is ScrollStartNotification) {
          // _onStartScroll(scrollNotification.metrics);
          // print("inicio");
          // widget.onScrollChange(scrollNotification.metrics.pixels);
        } else if (scrollNotification is ScrollUpdateNotification) {
          // print(scrollNotification.metrics.extentAfter);
          widget.onScrollChange(scrollNotification.metrics.extentAfter);
        } else if (scrollNotification is ScrollEndNotification) {
          // widget.onScrollChange(scrollNotification.metrics.pixels);
          // print("final");
        }
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

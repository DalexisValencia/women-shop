import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.grey[900],
                valueColor: new AlwaysStoppedAnimation<Color>(
                  (Colors.grey[400])!,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Cargando..",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.grey[900],
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

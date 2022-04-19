import 'package:flutter/material.dart';

class DeepTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(),
                Text('flutter is amazing'),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
              ),
            ),
            Text("it all widget!"),
            Text("Let\' find out how deep the rabbit hole goes."),
          ],
        ),
      ),
    ));
  }
}

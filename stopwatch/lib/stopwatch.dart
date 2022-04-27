import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  @override
  State createState() => StopWatchState();
}

class StopWatchState extends State<StopWatch> {
  late int seconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    seconds = 0;
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
  }

  void _onTick(Timer time) {
    setState(() {
      ++seconds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: Center(
        child: Text(
          '$seconds ${_secondText()}',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }

  String _secondText() => seconds == 1 ? 'second' : 'seconds';

  //Metodo che garatnisce lo stop del timer una volta chiusa l'app
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PlatformAlert {
  final String title;
  final String message;

  const PlatformAlert({required this.title, required this.message})
      : assert(title != null),
        assert(message != null);

  void show(BuildContext context) {
    final platform = Theme.of(context).platform;

    if (platform == TargetPlatform.iOS) {
      _buildCupertinolAlert(context);
    } else {
      _buildMaterialAlert(context);
    } //if-else
  } //show

  void _buildMaterialAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'),
              )
            ],
          );
        }); //showDialog
  } //_builMaterialAlert

  void _buildCupertinolAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'),
              )
            ],
          );
        }); //showDialog
  } //_buildCupertinoAlert

}

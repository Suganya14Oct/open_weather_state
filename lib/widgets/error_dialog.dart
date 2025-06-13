
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void errorDialog(BuildContext context, String errorMessage) {

  if (Platform.isIOS) {
    showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context){
          return CupertinoAlertDialog(
            title: Text('Error'),
            content: Text(errorMessage),
            actions: [
               CupertinoDialogAction(
                 child: Text('OK'),
                 onPressed: () => Navigator.pop(context),
               )
            ],
          );
    });
  }
  else {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(errorMessage),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK')
              )
            ],
          );
        }
    );
  }
}
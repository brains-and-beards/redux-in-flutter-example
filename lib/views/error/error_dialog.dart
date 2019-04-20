import 'package:flutter/material.dart';

class ErrorDialog extends Dialog {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        // Row is a horizontal, linear layout.
        child: IntrinsicHeight(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 30),
                child: Image.asset(
                  "assets/images/error_dialog_icon.png", width: 80, height: 80,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'API request failed, please try again',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: MaterialButton(
                  minWidth: 150,
                  color: Theme.of(context).primaryColor,
                  splashColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              )
            ],
          ),
        ));
  }
}

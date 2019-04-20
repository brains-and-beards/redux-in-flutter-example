import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String title;
  final TextEditingController controller;

  InputField({Key key, @required this.title, @required this.controller}) : super(key: key);

  @override
  InputFieldState createState() {
    return InputFieldState();
  }
}

class InputFieldState extends State<InputField> {

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
        decoration: InputDecoration(
            labelText: widget.title,
            labelStyle: TextStyle(color: Theme.of(context).primaryColor)
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'input_field.dart';

class LoginInputForm extends StatefulWidget {
  final Function(String, String) onLoginValidationSuccess;

  LoginInputForm({@required this.onLoginValidationSuccess}) : super();

  @override
  LoginInputFormState createState() {
    return LoginInputFormState();
  }
}

class LoginInputFormState extends State<LoginInputForm> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void validateInputs() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      widget.onLoginValidationSuccess(this.usernameController.text, this.passwordController.text);
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: <Widget>[
                  InputField(title: "Username", controller: usernameController),
                  InputField(title: "Password", controller: passwordController),
                ],
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: MaterialButton(
                  height: 40,
                  minWidth: 150,
                  color: Theme.of(context).primaryColor,
                  splashColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    validateInputs();
                  },
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

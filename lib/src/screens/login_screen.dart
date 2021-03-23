import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            emailField(),
            // passwordField(),
            // submitButton(),
          ],
        ),
      ),
      margin: EdgeInsets.all(20.0),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'name@domain.com',
      ),
    );
  }

  Widget passwordField() {}

  Widget submitButton() {}
}

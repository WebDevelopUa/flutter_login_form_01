import 'package:flutter/cupertino.dart';
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
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ),
      ),
      margin: EdgeInsets.all(20.0),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'name@domain.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '********',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        print('press');
      },
      child: Text('Submit'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.cyan),
        padding: MaterialStateProperty.all(EdgeInsets.all(25.0)),
      ),
    );
  }
}

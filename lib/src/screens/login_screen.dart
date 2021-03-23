import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      child: Form(
        key: formKey,
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
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '********',
      ),
      validator: (String value) {
        if (value.length < 4) {
          return 'Password must be at least 4 characters';
        }
        return null;
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Credentials: $email & $password');
        }
        return print('Validation Status: ${formKey.currentState.validate()}');
      },
      child: Text('Submit'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.cyan),
        padding: MaterialStateProperty.all(EdgeInsets.all(25.0)),
      ),
    );
  }
}

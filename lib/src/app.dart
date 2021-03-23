import 'package:flutter/material.dart';
import 'package:simple_flutter_login_form_01/src/screens/login_screen.dart';

class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        body: LoginScreen(),
      )
    );

  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text('404 Screen not found!'),
        ),
      ),
    );
  }
}

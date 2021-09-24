import 'package:flutter/material.dart';

class Emails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Data using Dio"),
      ),
      body: Container(
        child: Text("For Using Dio \n import dio library and remove http library\n and changeback to getapiData -> detail Screen",style: TextStyle(
          fontSize: 15
        ),),
      ),
    );
  }
}

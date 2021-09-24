import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/view/my_home_page.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Get.put(FirebaseController());
    return GetMaterialApp(

      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,

      //   theme: ThemeData(
        //         appBarTheme: AppBarTheme(
        //               textTheme: TextTheme(headline6:   TextStyle(color: Colors.black,fontSize: 20)),
        //           color: Colors.red,
        //
        //         ),
        //
        //         primarySwatch: Colors.blue,
        //         buttonColor: Colors.black,
        //           primaryColor: Colors.black,
        //         primaryIconTheme: IconThemeData(color: Colors.black),
        //         primaryTextTheme: TextTheme(
        //           bodyText1: TextStyle(color: Colors.black, ),),
        //         textTheme:TextTheme(bodyText1: TextStyle(color: Colors.black)),
        //
        //       ),
      ),
      home: MyHomePage(),
    );
  }
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}



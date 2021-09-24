import 'package:flutter/material.dart';

class ListData{

  var code;
  var name;
  var image;

  ListData({this.code,this.name,this.image});

}

List<ListData> personalListView = [
  ListData(code: 1,name: 'Get Api Data',image:Icons.data_usage),
  ListData(code: 2,name: 'Get Api Data 2',image:Icons.perm_data_setting),
  ListData(code: 3,name: 'video player',image:Icons.video_call),
  ListData(code: 4,name: 'Get Data Using Dio',image:Icons.email_outlined),
  ListData(code: 5,name: 'WiFi ',image:Icons.wifi),
  ListData(code: 6,name: 'Bluetooth',image:Icons.bluetooth),
  ListData(code: 7,name: 'User',image:Icons.title),
  ListData(code: 8,name: 'User',image:Icons.school),
  ListData(code: 9,name: 'User',image:Icons.wb_sunny),
  ListData(code: 10,name: 'User',image:Icons.ac_unit),
  ListData(code: 11,name: 'User',image:Icons.access_alarm),
];
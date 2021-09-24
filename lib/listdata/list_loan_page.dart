import 'package:flutter/material.dart';
import 'package:loan_app/get_api_data/product_view.dart';
import 'package:loan_app/get_api_data_2/product_view_2.dart';
import 'package:loan_app/video_playerssss/video_player_view.dart';
import 'package:loan_app/view/bluetooth.dart';
import 'package:loan_app/view/emails.dart';
import 'package:loan_app/view/wifi.dart';
import 'package:get/get.dart';

import 'list_data.dart';


class ListLoanPage extends StatelessWidget {


  List<Widget> route = [ProductView(),ProductView2(),VideoPlayerView(),Emails(),Wifi(),Bluetooth()];
  //for calling diff classes / widgets 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting"
        ),
      ),
      body: ListView.builder(
        itemCount: personalListView.length,
        itemBuilder: (context,index){
          ListData listData = personalListView[index];
          return Card(child: ListTile(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => route[index]));
            Get.to(route[index]);

            },
            title: Text(personalListView[index].name),
            leading: CircleAvatar(child: Icon(personalListView[index].image)),
            subtitle: Text(personalListView[index].code.toString()),
          ),);
        },
      ),
    );
  }
}



//import 'package:flutter/material.dart';
//
// import 'animals.dart';
// import 'birds.dart';
// import 'body_part.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ListViewHome(),
//     );
//   }
// }
//
// class ListViewHome extends StatelessWidget {
//   final titles = ["List 1", "List 2", "List 3"];
//
//   final subtitles = [
//     "Here is list 1 subtitle",
//     "Here is list 2 subtitle",
//     "Here is list 3 subtitle"
//   ];
//
//   final List<Widget> route = [Animals(), Birds(), BodyPart()];
//
//   final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: titles.length,
//           itemBuilder: (context, index) {
//             return Card(
//                 child: ListTile(
//                     onTap: () => Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => route[index])),
//                     title: Text(titles[index]),
//                     subtitle: Text(subtitles[index]),
//                     leading: CircleAvatar(
//                         backgroundImage: NetworkImage(
//                             "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
//                     trailing: Icon(icons[index])));
//           }),
//     );
//   }
// }
//
// /*List title = [
//    'Animals',
//    'Birds',
//    'Body Parts',
//    'Country',
//    'Fish',
//    'Plants',
//    'Vehicle',
//    'Works',
// ];
//
//
// List pages = [['Animals',Animals()],['Birds',Birds()],['Body Parts',BodyParts()],
//              ['Country',Country()],['Fish',Fish()],['Vehicle',Vehicle()],
//              ['Plants',Plants()],['Works',Works()]];
// now :
//
// ListView.builder(
//       itemCount: pages.length,
//       itemBuilder: (context, index) {
//         return GestureDetector(
//           child: ListTile(title:Text(pages[index][0])),
//           onTap: () {
//            Navigator.push(context,MaterialpageRoute(builder:(context)=>pages[index][1])));
//           },
//
//         );
//       },
//     )

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'details_Screen.dart';

class FoodHomePage extends StatelessWidget {
//  final MyFoodController _controller = Get.put(MyFoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: Drawer(
        //   child: Center(
        //     child: RaisedButton(
        //       onPressed: () async {
        //         await FirebaseAuth.instance.signOut();
        //         Get.off(LoginPage());
        //       },
        //       child: Text("Logout"),
        //     ),
        //   ),
        // ),
        appBar: AppBar(
          title: Text('HomeScreen'),
        ),
        body: GetX<MyFoodController>(
          init: MyFoodController(),
          builder: (controller) =>
            ListView.builder(
              itemCount: controller.listData.length,
              itemBuilder: (context, index) =>
                  Card(
                    child: ListTile(
                      onTap: () =>
                          Get.to(DetailsScreen(
                              controller.listData[index].name,
                              controller.listData[index].tagList,
                              controller.listData[index].imageLink)),
                      title: Text(
                        controller.listData[index].name,
                      ),
                      subtitle: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Image(
                            image:
                            NetworkImage(controller.listData[index].imageLink)),
                      ),
                      leading: Icon(Icons.restaurant),

                    ),

                  ),
            ),

        ));
  }
}

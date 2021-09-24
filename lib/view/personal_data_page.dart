import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/listdata/list_loan_page.dart';


class PersonalDataPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      
      body: ListView(
        children: [
          RaisedButton(onPressed: (){
            Get.to(ListLoanPage());
          },
          child: Text(
            "List Page"
          ),),
        ],
      ),

    );
  }
}

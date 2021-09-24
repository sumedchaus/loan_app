import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loan_app/controller/personal_controller.dart';
import 'package:loan_app/view/personal_data_page.dart';

class MyHomePage extends StatelessWidget {
  var status = '';
  String dropdownValue = '';
  bool isChecked = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  PersonalController personalController = PersonalController();

  void validate(){
    if(formKey.currentState.validate()){
      Get.to(PersonalDataPage());

    }else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal Loan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  TextFormField(

                    controller: personalController.userNameEditController,
                    cursorColor: Colors.red,
                    style: TextStyle(color: Colors.red),
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      focusColor: Colors.red,
                      hintText: 'username',
                      labelText: 'username',
                    ),

                  // validator: personalController.userNameValid,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    autovalidate: true,
                    // validator: personalController.emailIdValid,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email-Id',
                      labelText: 'Email-Id',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // validator: personalController.mobileNumberValidate,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: 'Mobile Number',
                      labelText: 'Mobile Number',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'DD/MM/YY',
                      labelText: 'Date of Birth',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: 'A',
                        groupValue: status,
                        onChanged: (value) {

                        },
                      ),
                      Text(
                        'Married',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Radio(
                          value: 'B',
                          groupValue: status,
                          onChanged: (value) {

                          },
                        ),
                      ),
                      Text(
                        'Single',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      hintText: 'Address',
                      labelText: 'Address',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: 'Loan Amount',
                        labelText: 'Loan Amount',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    isExpanded: true,
                    decoration: const InputDecoration(
                        hintText: 'Select Tenure',
                        border: OutlineInputBorder(),
                        labelText: 'Loan Tenure',
                        labelStyle: TextStyle(color: Colors.blue)),
                    onChanged: (String newValue) {

                    },
                    items: <String>[
                      '',
                      'One',
                      'Two',
                      'Free',
                      'Four',
                      'Five',
                      'Six',
                      'Seven',
                      'Eight',
                      'Nine',
                      'Ten',
                      'Eleven',
                      'Twelve'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Rate of Interest',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  CheckboxListTile(
                    checkColor: Colors.white,
                    title: new Text('NEFT Facility Available'),
                    value: isChecked,
                    onChanged: (bool value) {

                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        validate();
                      },
                      child: Text(
                        'Submit',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

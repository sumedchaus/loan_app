
import 'package:get/get.dart';
import 'package:loan_app/get_apidata_dio/services.dart';
import 'foodModel.dart';

class MyFoodController extends GetxController {

  List<Welcome> listData = List<Welcome>().obs;
  var _x;

  get x => _x;

  static get to => Get.find<MyFoodController>();

  @override
  void onInit() {
    DataServices.fetchData();
    super.onInit();
  }
}
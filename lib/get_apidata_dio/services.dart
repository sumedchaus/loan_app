
// import 'package:dio/dio.dart';
import 'controller.dart';
import 'foodModel.dart';

var _controller=MyFoodController.to;

class DataServices {
  static Future<List<Welcome>> fetchData() async {

    String url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

    // Dio dio = Dio();
    //
    // Response response = await dio.get(url);

    // if (response.statusCode == 200) {
    //   print(response.statusCode);
    //   for (var item in response.data) {
    //     _controller.listData.add(Welcome.fromJson(item));
      }
  //     return _controller.listData;
  //   }
  // }
}

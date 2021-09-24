import 'package:http/http.dart' as http;
import 'package:loan_app/get_api_data_2/welcome2.dart';


class RemoteService {

  static var client = http.Client();

  static Future<List<Welcome>> fetchProduct() async{

  var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if(response.statusCode == 200){
    var jsonString = response.body;
    return welcomeFromJson(jsonString);
  }else{
    print("error");
  }
  }
}

//
// class RemoteService extends GetConnect{
//
//    Future <List<Welcome>> fetchProduct() async{
//     final response = await get('https://jsonplaceholder.typicode.com/posts');
//     if(response.status.hasError){
//       return Future.error(response.statusText);
//     } else {
//       var jsonString = response.body;
//      return welcomeFromJson(jsonString);
//     }
//   }
//
// }

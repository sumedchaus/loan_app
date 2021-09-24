import 'package:http/http.dart' as http;
import 'package:loan_app/get_api_data/product_data.dart';


class ProductService {
static var client = http.Client();

static Future <List<Welcome>>fetchProduct() async{
    var response = await client.get(Uri.parse('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));

    if(response.statusCode==200){
     var jsonString=  response.body;
     return welcomeFromJson(jsonString);
    }else{
       print("error");
    }
  }

}
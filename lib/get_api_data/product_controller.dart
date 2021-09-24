import 'package:get/get.dart';
import 'package:loan_app/get_api_data/product_data.dart';
import 'package:loan_app/get_api_data/product_service.dart';

class ProductController extends GetxController {
  var productList = List<Welcome>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();

  }

  void fetchProducts() async{
    var products = await ProductService.fetchProduct();

  if(products != null){
    productList.value = products ;

  }else {
    return null;
  }


  }
}



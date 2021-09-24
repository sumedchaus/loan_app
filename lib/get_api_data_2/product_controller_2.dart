import 'package:get/get.dart';
import 'package:loan_app/get_api_data_2/remote_service.dart';
import 'package:loan_app/get_api_data_2/welcome2.dart';


class ProductController2 extends GetxController{


  @override
  void onInit(){
    fetchProduct();
    super.onInit();
  }

  var productList = List<Welcome>().obs;

   void fetchProduct() async{
     try {
       var product = await RemoteService.fetchProduct();
       if(product != null ){
         productList.value = product;
       }
     } on Exception catch (e) {


     }

  }
}

// class ProductController extends GetxController {
// var productList = List<Welcome>().obs;
//
//
//   @override
//   void onInit() {
//     fetchProduct();
//     super.onInit();
//
//   }
//   void fetchProduct(){
//     var product = RemoteService().fetchProduct();
//     if(product != null ){
//       productList.value = product;
//        }
//   }
//
//
//   @override
//   void onClose() {
//     // TODO: implement onClose
//     super.onClose();
//   }
// }
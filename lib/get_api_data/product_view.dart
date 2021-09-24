import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loan_app/get_api_data/product_controller.dart';
import 'package:loan_app/get_api_data/product_tile.dart';

class ProductView extends StatelessWidget {
  ProductController productController = Get.put(ProductController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ShopX',
          style: TextStyle(
              fontFamily: 'avenir',
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart,color: Colors.black,),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.view_list_rounded,color: Colors.black,), onPressed: () {}),
          IconButton(icon: Icon(Icons.grid_view,color: Colors.black,), onPressed: () {}),
        ],

      ),
      body: Container(
        color: Colors.blue[900],
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                // if (productController.isLoading.value) {
                //   return Center(child: CircularProgressIndicator());
                // } else {
                  return
                    StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: productController.productList.length,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      itemBuilder: (context, index) {
                        return ProductTile(productController.productList[index]);
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    );
                }
              // }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:loan_app/get_api_data_2/product_controller_2.dart';
import 'package:loan_app/get_api_data_2/product_tile2.dart';


class ProductView2 extends StatelessWidget {
  final ProductController2 productController2 = Get.put(ProductController2());

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
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                // if (productController.isLoading.value) {
                //   return Center(child: CircularProgressIndicator());
                // } else {
                return
                  StaggeredGridView.countBuilder(
                    crossAxisCount: 1,
                    itemCount: productController2.productList.length,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    itemBuilder: (context, index) {
                      return ProductTile2(productController2.productList[index]);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  );
                // }
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

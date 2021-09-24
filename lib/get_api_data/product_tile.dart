import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/get_api_data/product_data.dart';

class ProductTile extends StatelessWidget {

  final Welcome product;
  const ProductTile(this.product);



  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue[200],

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          product.imageLink,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Obx(() =>
                          IconButton(
                          icon: product.isFavorite.value
                              ? Icon(Icons.favorite_rounded)
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            product.isFavorite.toggle();
                          },

                      )),
                    )
                    // Positioned(
                    //   right: 0,
                    //   child:  CircleAvatar(
                    //     backgroundColor: Colors.transparent,
                    //     child: IconButton(
                    //       icon: Icon(Icons.favorite_border),
                    //       onPressed: () {
                    //
                    //       },
                    //     ),
                    //   )),

                  ],
                ),
                SizedBox(height: 8),
                Text(
                  product.name,
                  maxLines: 2,
                  style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                if (product.rating != null)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          product.rating.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 8),
                Text('\$${product.price}',
                    style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
              ],
            ),
          ),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app/get_api_data_2/welcome2.dart';


class ProductTile2 extends StatelessWidget {

  final Welcome product2;
  const ProductTile2(this.product2);



  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  
                  children: [
                    Text(
                      product2.id.toString(),

                      style:
                      TextStyle(fontFamily: 'avenir',
                        fontSize: 20,),
                      // overflow: TextOverflow.ellipsis,
                    ),
                    
                    SizedBox(width: 15,),
                    
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product2.title,
                            maxLines: 2,
                            style:
                            TextStyle(fontFamily: 'avenir',
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                            // overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8),
                          Text(
                            product2.body,

                            style:
                            TextStyle(fontFamily: 'avenir',),
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),



        ],
    ),
    ),
    ),
    );

  }
}

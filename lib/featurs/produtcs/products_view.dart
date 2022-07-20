import 'package:flutter/material.dart';
import 'package:provider_deneme/featurs/produtcs/model/product_model.dart';
import 'package:provider_deneme/featurs/produtcs/products_view_model.dart';
import 'package:provider_deneme/product/widget/shop_card.dart';
import 'package:provider/provider.dart';

import '../../product/model/user_model.dart';

class ProductsView extends ProductsViewModel {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [buildActionChipTotalMoney()]),
      body: ListView.builder(
        //itemCount: products.length,
        itemBuilder: (context, index){
        return ShopCard(product: Product(
          image: "https://picsum.photos/200",
          name: " umit $index",
          price: 19,
          //total: 120,
         // sId: "1",
        ),);
      }),
    );
  }

  ActionChip buildActionChipTotalMoney() {
    return ActionChip(
      avatar: Icon(Icons.check,color: Colors.green,),
      label: Text('${context.watch<User>().basketTotalMoney} TL'), onPressed: () {});
  }
}

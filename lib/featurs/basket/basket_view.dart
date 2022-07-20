import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_deneme/featurs/basket/basket_view_model.dart';
import 'package:provider_deneme/product/model/user_model.dart';

class BasketView extends BasketViewModel{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: context.watch<User>().basketItems.length,
            itemBuilder: (context,index){
              final product = context.watch<User>().basketItems[index];
            return Column(
              children: [
              Image.network(product.image),
              Text("${context.watch<User>().basketProducts[product]} * ${product.price}"),
            ],);
          }),
        ),
        ElevatedButton(onPressed: (){}, child: Text('Buy All'))
      ]),
    );
  }
}
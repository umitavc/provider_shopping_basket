import 'package:flutter/material.dart';
import 'package:provider_deneme/featurs/produtcs/model/product_model.dart';
import 'package:provider/provider.dart';
import 'package:provider_deneme/product/model/user_model.dart';

class ShopCard extends StatelessWidget {
  final Product  product;
  const ShopCard({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
   
    return Card(child: ListTile(
            trailing: IconButton(onPressed: () {
              context.read<User>().addFirstItemToBasket(product);
            }, icon: Icon(Icons.shopping_basket)),
            title: buildSizedBoxImage(context),
            subtitle: buildWrapSub()
          ));
  }

  Widget buildSizedBoxImage(BuildContext context) {
    return Column(
      children: [
        SizedBox(
                height: MediaQuery.of(context).size.height *0.2,
                child: Image.network(product.image)),
                SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                Container(
                  color: Colors.black12,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {
                         context.read<User>().incrementProduct(product);
                      }, icon: Icon(Icons.add)),
                      
                      Text("${context.watch<User>().basketProducts[product] ?? 0}"),

                      IconButton(onPressed: () {
                         context.read<User>().increseProduct(product);
                      }, icon: Icon(Icons.remove)),
                    ],
                  ),
                )
      ],
    );
  }

  Wrap buildWrapSub() {
    
    return Wrap(
            spacing: 10,
            children: [
              Text(product.name),
               Text("${product.price}"),
            ],
          );
  }
}
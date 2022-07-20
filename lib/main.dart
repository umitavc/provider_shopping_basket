import 'package:flutter/material.dart';
import 'package:provider_deneme/featurs/tabs/shoppi_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:provider_deneme/product/model/user_model.dart';
import 'package:provider_deneme/product/service/user_service.dart';

void main() => runApp(MultiProvider(
  providers: [
    Provider<UserService>(create: (context) => UserService(),),
    ChangeNotifierProvider(create: (context) => User(context),)
  ], 
  child: MyApp()
  ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Material App', home: ShoppiTabView());
  }
}

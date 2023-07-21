
import 'package:fella/model/cart_model.dart';
import 'package:fella/pages/Intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fella/providers/Contralin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context)=>CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intropages(),
      ),
    );
  }
}

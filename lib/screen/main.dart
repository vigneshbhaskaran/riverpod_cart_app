import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ecommerce/screen/display_all_products.dart';

void main()
{
  runApp(ProviderScope(child: MyApp()));
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DisplayAllProducts(),
    );
  }
}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ecommerce/class_models/product_list.dart';
import 'package:riverpod_ecommerce/class_models/product_model.dart';


final productList=Provider<List<ProductModel>>(
  (ref){
   return ProductList().products;
  }
);
// final productList=Provider<List<ProductModel>>(
//   (ref)
//   {
//     return ref.watch(productobj).products;
//   }
// );

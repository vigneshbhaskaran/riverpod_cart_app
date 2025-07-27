 import 'package:riverpod_ecommerce/class_models/product_model.dart';


class ProductList {
final List<ProductModel> _allproducts=[
  ProductModel(id: 1, title: 'backpack', image:'assets/images/backpack.png', price: 112),
  ProductModel(id: 2, title: 'drum',image:'assets/images/drum.png',  price: 23),
    ProductModel(id: 3, title: 'guitar', image:'assets/images/guitar.png', price: 907),
  ProductModel(id: 4, title: 'jeans',image:'assets/images/jeans.png', price: 10),
    ProductModel(id: 5, title: 'karati', image:'assets/images/karati.png', price: 99),
  ProductModel(id: 6, title: 'shorts', image:'assets/images/shorts.png', price: 777),
    ProductModel(id: 7, title: 'skates', image:'assets/images/skates.png', price: 235),
  ProductModel(id: 8, title: 'suitcase', image:'assets/images/suitcase.png',price: 5),
 ];
 List<ProductModel> getList()
 {
  return _allproducts;
 }
 List<ProductModel> get products{
  return _allproducts;
 }
}

  
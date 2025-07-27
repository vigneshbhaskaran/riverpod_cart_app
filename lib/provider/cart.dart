import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ecommerce/class_models/product_model.dart';

class Cart extends Notifier<Set<ProductModel>>{

 


  @override
  Set<ProductModel> build(){
     Set<ProductModel> cartset={
  ProductModel(id: 4, title: 'jeans',image:'assets/images/jeans.png', price: 10),
    ProductModel(id: 6, title: 'shorts', image:'assets/images/shorts.png', price: 777),
  
 };
    return cartset;

   
  }

  void add(ProductModel pro)
  {
    if(!state.contains(pro))
    {
     state={...state,pro};
    }
    

  }

  void remove(ProductModel pro)
  {
    if(state.contains(pro))
    {
      state=state.where((a)=>a.id!=pro.id).toSet();
    }
  }



}


final cartProvider=NotifierProvider<Cart,Set<ProductModel>>(
  ()
  {
return Cart();
  }
);
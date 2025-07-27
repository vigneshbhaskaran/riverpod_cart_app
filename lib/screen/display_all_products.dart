import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ecommerce/provider/cart.dart';

import 'package:riverpod_ecommerce/provider/provider_productlist.dart';
import 'package:riverpod_ecommerce/screen/display_cart.dart';

class DisplayAllProducts extends ConsumerWidget {
  const DisplayAllProducts({super.key});



  @override
  Widget build(BuildContext context,ref) {
    final allproducts=ref.watch(productList);
    final cartproducts=ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, (MaterialPageRoute(builder: (context)=>Mycart())));
          }, icon: Icon(Icons.shopping_basket)),
        ],
      ),
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20,50),
        child: GridView.builder(
          itemCount: allproducts.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.6,crossAxisSpacing: 20,mainAxisSpacing: 10), 
          itemBuilder: (context,index)
          {
            final isInCart=cartproducts.any((e)=>e.id==allproducts[index].id);
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: [
                  Image.asset(allproducts[index].image),
                  Text(allproducts[index].title),
                  Text('${allproducts[index].price}'),
                  if(isInCart)
                  TextButton(
                    onPressed: (){
                    ref.watch(cartProvider.notifier).remove(allproducts[index]);
                    },
                    child: Text('REMOVE ME',style: TextStyle(fontSize: 20),)),
                  if(!isInCart)
                    TextButton(
                      onPressed: () {
                        ref.watch(cartProvider.notifier).add(allproducts[index]);
                      },
                      child: Text('ADD ME',style: TextStyle(fontSize: 20),)),

                ],
              ),
            );
          }),
      )
      ),
    );
  }
}
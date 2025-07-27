import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_ecommerce/provider/cart.dart';

class Mycart extends ConsumerStatefulWidget {
  const Mycart({super.key});

  @override
  ConsumerState<Mycart> createState() => _MycartState();
}

class _MycartState extends ConsumerState<Mycart> {
  @override
  Widget build(BuildContext context) {
    final cartproducts=ref.watch(cartProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: 
             cartproducts.map((a)=>Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.green[200],
               
                ),
                child: Row(
                  children: [
                    Text(a.title,style: TextStyle(fontSize: 20),),
                    Image.asset(a.image),
                    Text('${a.price}',style: TextStyle(fontSize: 20),),
               
               
               
                  ],
                ),
               ),
             ),
             ).toList(),
       
          
        ),
        ),
    );
  }
}
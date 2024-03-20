import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Cart', style: TextStyle(color: Colors.orange, fontSize: 25),),
                Icon(Icons.shopping_cart,size: 35, color: Colors.orange,),

              ],
            ),
            )
          ],
        ),

    );
  }
}

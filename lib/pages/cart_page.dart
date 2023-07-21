import 'package:fella/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"),),
      body: Consumer<CartModel>(builder: (context,value,child){
        return Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: value.cartItems.length,
                itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8)
                  ),
                    child: ListTile(
                      leading: Image.asset(
                        value.cartItems[index][2],
                        height: 36,
                      ),
                        title: Text(value.cartItems[index][0]),
                      subtitle: Text("\$"+value.cartItems[index][1]),
                      trailing: IconButton(icon:Icon(Icons.cancel),
                        onPressed: () =>Provider.of<CartModel>(context,listen: false).removeItemFromCart(index),),
                    )
                ),
              );
            })
            ),
            // totalprice + pay
            Padding(
              padding: EdgeInsets.all(36),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                  borderRadius: BorderRadius.circular(8)
                ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Total Price",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                              "\$"+value.calcTotalPrice(),
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green.shade100),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Pay now",
                              style: TextStyle(
                                  color: Colors.white,
                                fontSize: 20
                              ),
                            ),
                            Icon(Icons.paypal,size: 26,)
                          ],
                        ),
                        
                      )

                    ],
                  )
              ),
            )
          ],
        );
      },)
    );
  }
}

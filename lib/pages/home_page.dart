import 'package:fella/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import 'cart_page.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context){
          return CartPage();
        },)),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 48,),
            //good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                    "Good Morning ",

                )),
            const SizedBox(height: 4,),
            // lets order fresh items
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text("Lets order Fresh Items",
                    style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
                )),
            // divider
            const Divider(thickness: 4,),
            const SizedBox(height: 24,),
            // grid of items
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                    "Fresh Market",
                  style: TextStyle(fontSize: 16),
                )),
           Expanded(child: Consumer<CartModel>(builder: (context,value,child){
             return GridView.builder(
                 itemCount: value.shopItems.length,
                 gridDelegate:
             const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
               childAspectRatio: 1/1.3,
             )
                 , itemBuilder: (context,index){
                   return GroceryItemTile(
                     iteName:value.shopItems[index][0],
                     itePrice: value.shopItems[index][1],
                     imagePath: value.shopItems[index][2],
                     color: value.shopItems[index][3],
                     onPressed: (){
                       Provider.of<CartModel>(context,listen: false).addToCart(index);
                     },
                   );
                 });
           },),),

          ],
        ),
      ),
    );
  }
}

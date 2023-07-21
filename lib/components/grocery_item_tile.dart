import 'package:flutter/material.dart';
class GroceryItemTile extends StatelessWidget {
  final String iteName;
  final String itePrice;
  final String imagePath;
  final  color;
  void Function ()? onPressed;
   GroceryItemTile({
    super. key,
    required this.iteName,
    required this.itePrice,
    required this.imagePath,
    required this.color,
    required  this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
                imagePath,
              height: 64,
            ),
            //item_name
            Text(iteName),
            //price + button
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child:Text(
                  "\$" + itePrice,
                style: TextStyle(
                    color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:fella/pages/home_page.dart';
import 'package:flutter/material.dart';

class Intropages extends StatelessWidget {
  const Intropages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          // place the images here
          Padding(
            padding: EdgeInsets.only(top: 190.0,bottom: 30.0),
              child: Image.asset(
                  "lib/images/banana.png"
              ),
          ),
          //text we deliver here
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
                "We Deliver to your Nganda",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 40.0
              ),
            ),

          ),
          const SizedBox(height: 24,),
          const Text(
              style:TextStyle(fontSize: 20.0),
              "Fresh Lubbe"
          ),
          // button shop with us
          const Spacer(),
          GestureDetector(
            onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return Homepage();
            })),
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.deepPurple,
                borderRadius:BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24.0),
              child: const Text(
                  "Get Started Shopping",
                style: TextStyle(fontSize: 15.0,color: Colors.white),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}

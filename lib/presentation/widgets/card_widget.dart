import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('images/Super Supreme.png'),
                  SizedBox(height: 8.0),
                  Text('Super Supreme',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Text('Daging Sapi Asap, Daging Ayam Asap, Burger Sapi, Jamur, Nanas, Paprika dan Keju Mozzarella'),
                  Text('₹199',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart)),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart))
                  ],)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('images/Frankfurter BBQ.png'),
                  SizedBox(height: 8.0),
                  Text('Frankfurter BBQ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Text('Frankfurter Sapi, Daging Sapi Cincang, Saus Honey BBQ'),
                  Text('₹199',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.cart)),
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart))
                  ],)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

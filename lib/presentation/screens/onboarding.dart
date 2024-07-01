import 'package:flutter/material.dart';
import 'package:foodapp/constant/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/onboarding.jpg'),fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),)),
child: SafeArea(
  child: Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Savor Every Moment , Slice by Slice.',style: TextStyle(color: Color(0xffF4F4F4),fontSize: 30),textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('The Pizza Hut app provides a pizza-eating experience like no other. With a wide selection of toppings and signature flavors, enjoy every slice of pizza with our easy-to-use app.',style: TextStyle(color: Color.fromARGB(255, 214, 214, 214)),),
            )
          ],),
        ),
       InkWell(
        onTap: (){
          Navigator.of(context).pushReplacementNamed('/main');
        },
         child: Container(
           padding: const EdgeInsets.all(15),
           margin: const EdgeInsets.only(left: 100, right: 100),
           decoration: BoxDecoration(
             color: red,
             borderRadius: BorderRadius.circular(10),
           ),
           child: const Center(
             child: Text(
               "Let's try",
               style: TextStyle(color: Color(0xffF4F4F4),fontWeight: FontWeight.bold),
             ),
           ),
         ),
       ),
      ],
    ),
  ),
),
    ),
    );
  }
}
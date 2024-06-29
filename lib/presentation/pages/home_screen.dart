import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/presentation/widgets/card_widget.dart';
import 'package:foodapp/presentation/widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: EdgeInsets.all(5.0),
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed('/profile');
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.1.1900052020.1717854544&semt=sph'),
            ),
          ),
        ),
        title: const Text(
          'Welcome back,\nAndrew',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.chat_bubble_fill,color: Color(0xffDA1A32),),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(85),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:const DecorationImage(
                    image: AssetImage('images/image 6.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Melts Pizza',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Cheesy, Crispy, Loaded. Pizza Baru topping Seru Langsung Melts and Go! Pesan sekarang.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                height: 130, 
                child: Categories(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Popular',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
            ),
            CardWidget()
          ],
        ),
      ),
    );
  }
}

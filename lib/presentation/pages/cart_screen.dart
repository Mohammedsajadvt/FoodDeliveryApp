import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Carts',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffDA1A32),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.1.1900052020.1717854544&semt=sph'),
              ),
            ),
          ),
        ],
      ),
      body:Stack(children: [
         SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(10.0),
                  leading: Image.asset(
                    'images/Super Supreme.png',
                    fit: BoxFit.cover,
                    height: 70,
                    width: 60,
                  ),
                  title: const Text(
                    'Super Supreme',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: const Text(
                    'Daging Sapi Asap, Daging Ayam Asap, Burger Sapi, Jamur, Nanas, Paprika dan Keju Mozzarella',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '₹199',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Positioned(child: Align(
        alignment: AlignmentDirectional.bottomEnd,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            onTap: (){
            },
             child: Container(
               height: 65,
               margin: const EdgeInsets.only(left: 50, right: 50),
               decoration: BoxDecoration(
                 color: const Color(0xffDA1A32),
                 borderRadius: BorderRadius.circular(15),
               ),
               child: const Center(
                 child: Text(
                   "Order Now",
                   style: TextStyle(color: Color(0xffF4F4F4),fontWeight: FontWeight.bold),
                 ),
               ),
             ),
           ),
        ),
      ),)
      ],),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = ["images/Pizza Tipker.png", "images/image 6.png"];

    List<String> titles = ["Melts Pizza", "Pizza Tipker"];

    List<String> descriptions = [
      "Cheesy, Crispy, Loaded. Pizza Baru topping Seru Langsung Melts and Go! Pesan sekarang.",
      "Pizza Tipis dan Krispy dengan varian Topping Classic dan Premium, Pesan Sekarang!"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Promo Day',
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
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(images[index]),
                    const SizedBox(height: 8),
                    Text(
                      titles[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      descriptions[index],
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

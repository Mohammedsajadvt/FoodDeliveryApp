import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/Pizza Tipker.png",
      "images/image 6.png"
    ];

    List<String> titles = [
      "Melts Pizza",
      "Pizza Tipker"
    ]; 

    List<String> descriptions = [
      "Cheesy, Crispy, Loaded. Pizza Baru topping Seru Langsung Melts and Go! Pesan sekarang.",
      "Pizza Tipis dan Krispy dengan varian Topping Classic dan Premium, Pesan Sekarang!"
    ];
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo Day',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffDA1A32),
          ),
        ),
        centerTitle: true,
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
                    SizedBox(height: 8),
                    Text(
                      titles[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      descriptions[index],
                      style: TextStyle(fontSize: 14),
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

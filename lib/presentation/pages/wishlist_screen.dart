import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wishlists',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffDA1A32),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.1.1900052020.1717854544&semt=sph'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

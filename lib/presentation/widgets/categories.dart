import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh9ZA5iXWwIVgp0cwdybKGXd-Fj-1VhXFczg&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtfA_0ci3oXvsafyLi9UgeLXBJuFqPB_xnhw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKyBf5WQn_S7OqSDRPhWY-yOdT23VOPxWC5g&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTC61HXX9nOGG3_dlGkDKrH9XvVjTEvJNzjg&s"
    ];
    List<String> names = [
      "Pizza",
      "Pasta",
      "Rice",
      "Drinks"
    ];
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(items[index]),
                ),
              ),
              SizedBox(height: 8.0),
              Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        );
      },
    );
  }
}

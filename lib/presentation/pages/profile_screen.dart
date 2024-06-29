import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffDA1A32),
          ),
        ),leading: IconButton(onPressed: (){
        Navigator.maybePop(context);
      }, icon: Icon(CupertinoIcons.back)),centerTitle: true,),
    );
  }
}
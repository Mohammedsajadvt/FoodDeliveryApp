import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/constant/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: red,
          ),
        ),leading: IconButton(onPressed: (){
        Navigator.maybePop(context);
      }, icon: const Icon(CupertinoIcons.back)),centerTitle: true,),
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Stack(
              children: [
                const CircleAvatar(radius: 60,),
                Positioned(bottom: 0,right: 0,child: IconButton(onPressed: (){}, icon: const CircleAvatar(backgroundColor: red,child: Icon(Icons.camera_alt_outlined,color: Colors.white,))))
              ],
            ), 
            const SizedBox(height: 50,),
            Form(child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(children: [
                TextFormField(keyboardType: TextInputType.name,decoration: InputDecoration(labelStyle: const TextStyle(color: red),hintText: 'Enter Your Name',prefixIcon: const Icon(Icons.person,color: red,),labelText: 'Full Name',border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),),
                const SizedBox(height: 30,),
                TextFormField(keyboardType: TextInputType.emailAddress,decoration: InputDecoration(labelStyle: const TextStyle(color: red),hintText: 'Enter Your Email',prefixIcon: const Icon(Icons.email,color: red,),labelText: 'Email',border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),),
                const SizedBox(height: 30,),
                TextFormField(keyboardType: TextInputType.number,decoration: InputDecoration(labelStyle: const TextStyle(color: red),hintText: 'Enter Your Phone Number',prefixIcon:const Icon(Icons.phone,color: red,),labelText: 'Phone Number',border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),),
                const SizedBox(height: 30,),
                InkWell(onTap: (){},child: Container(padding: const EdgeInsets.all(15),decoration: BoxDecoration(color: red,borderRadius: BorderRadius.circular(10)),child: const Center(child: Text('Update',style: TextStyle(color: Colors.white),),),))
              ],),
            ))      
          ],),
        ),
      ),
    );
  }
}
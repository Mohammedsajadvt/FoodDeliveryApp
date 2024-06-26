import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/blocs/bottom_navigation/bottom_nav_bloc.dart';
import 'package:foodapp/constant/colors.dart';
import 'package:foodapp/presentation/screens/cart_screen.dart';
import 'package:foodapp/presentation/screens/wishlist_screen.dart';
import 'package:foodapp/presentation/screens/home_screen.dart';
import 'package:foodapp/presentation/screens/profile_screen.dart';
import 'package:foodapp/presentation/screens/promo_screen.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home',backgroundColor: red),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: 'Cart',backgroundColor: red),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: 'Wishlist',backgroundColor: red),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.ticket),label: 'Promo',backgroundColor: red),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: 'Person',backgroundColor: red),
];

const List<Widget> bottomNavScreens = <Widget>[
  HomeScreen(),
  CartScreen(),
  WishlistScreen(),
  PromotionScreen(),
  ProfileScreen(),
];

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreens.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            fixedColor: Colors.white,
            onTap: (index) {
              BlocProvider.of<BottomNavBloc>(context).add(TabChange(tabIndex: index));
            },
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}

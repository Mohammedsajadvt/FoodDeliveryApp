import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/presentation/bloc/bottom_navigation/bottom_nav_bloc.dart';
import 'package:foodapp/presentation/pages/cart_screen.dart';
import 'package:foodapp/presentation/pages/fav_screen.dart';
import 'package:foodapp/presentation/pages/home_screen.dart';
import 'package:foodapp/presentation/pages/profile_screen.dart';
import 'package:foodapp/presentation/pages/promo_screen.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'HOME',backgroundColor: Color(0xffDA1A32)),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: 'CART',backgroundColor: Color(0xffDA1A32)),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: 'FAVORITE',backgroundColor: Color(0xffDA1A32)),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.ticket),label: 'PROMO',backgroundColor: Color(0xffDA1A32)),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: 'PERSON',backgroundColor: Color(0xffDA1A32)),
];

const List<Widget> bottomNavScreens = <Widget>[
  HomeScreen(),
  CartScreen(),
  FavScreen(),
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

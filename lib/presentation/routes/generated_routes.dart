import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/blocs/bottom_navigation/bottom_nav_bloc.dart';
import 'package:foodapp/presentation/screens/home_screen.dart';
import 'package:foodapp/presentation/screens/main_screen.dart';
import 'package:foodapp/presentation/screens/onboarding.dart';
import 'package:foodapp/presentation/screens/otp_screen.dart';
import 'package:foodapp/presentation/screens/phone_screen.dart';
import 'package:foodapp/presentation/screens/profile_screen.dart';

class RouteGenerator{
  final BottomNavBloc bottomNavBloc = BottomNavBloc();
  Route<dynamic> generateRoute(RouteSettings setting){
    final args = setting.arguments;
    switch(setting.name){
      case '/':
      return MaterialPageRoute(builder: (context) => const Onboarding());
      case '/phone':
      return MaterialPageRoute(builder: (_) => const PhoneScreen());
      case '/otp':
      return MaterialPageRoute(builder: (_) => const OtpScreen());
      case '/main':
      return MaterialPageRoute(builder: (_) => BlocProvider<BottomNavBloc>.value(value: bottomNavBloc,child: const Main(),));
      case '/home':
      return MaterialPageRoute(builder: (_) => BlocProvider<BottomNavBloc>.value(value: bottomNavBloc,child: const HomeScreen(),));
      case '/profile':
      return MaterialPageRoute(builder: (_) => BlocProvider<BottomNavBloc>.value(value: bottomNavBloc,child: const ProfileScreen(),));
      default:
      return _errorRoute();
    }
  }
   static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      );
    });
  }
}



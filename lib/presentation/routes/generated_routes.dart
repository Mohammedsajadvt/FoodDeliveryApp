import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/presentation/bloc/bottom_navigation/bottom_nav_bloc.dart';
import 'package:foodapp/presentation/pages/main_screen.dart';
import 'package:foodapp/presentation/pages/onboarding.dart';

class RouteGenerator{
  final BottomNavBloc bottomNavBloc = BottomNavBloc();
  Route<dynamic> generateRoute(RouteSettings setting){
    final args = setting.arguments;
    switch(setting.name){
      case '/':
      return MaterialPageRoute(builder: (context) => Onboarding());
      case '/main':
      return MaterialPageRoute(builder: (_) => BlocProvider<BottomNavBloc>.value(value: bottomNavBloc,child: Main(),));
      default:
      return _errorRoute();
    }
  }
   static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Page not found'),
        ),
      );
    });
  }
}



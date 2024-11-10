import 'package:education_app/presentation/screens/auth/create_account.dart';
import 'package:education_app/presentation/screens/auth/login.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? generarteRoute(RouteSettings routesettings) {
    switch (routesettings.name) {
      case "/":
      return MaterialPageRoute(builder: (context) =>  Login());

      case "createAccount":
      return MaterialPageRoute(builder: (context) =>  CreateAccount());
    
    }
    }
}
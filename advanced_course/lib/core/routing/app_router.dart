import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/features/login/ui/widgets/login_screen.dart';
import 'package:advanced_course/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';



class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>  Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
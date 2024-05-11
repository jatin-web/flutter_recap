import 'package:flutter/material.dart';
import 'package:flutter_recap/presentation/screens/home_screen.dart';
import 'package:flutter_recap/presentation/screens/learn_abstract_class.dart';
import 'package:flutter_recap/presentation/screens/learn_extensions.dart';
import 'package:flutter_recap/presentation/screens/learn_get_it_service_locator.dart';
import 'package:flutter_recap/presentation/screens/learn_getter_setter.dart';
import 'package:flutter_recap/presentation/screens/learn_encapsulation.dart';
import 'package:flutter_recap/presentation/screens/learn_isolates.dart';
import 'package:flutter_recap/presentation/screens/learn_singleton.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case LearnSingleton.routeName:
        return MaterialPageRoute(builder: (_) => const LearnSingleton());
      case LearnExtensions.routeName:
        return MaterialPageRoute(builder: (_) => const LearnExtensions());
      case LearnAbstractClassScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const LearnAbstractClassScreen());
      case LearnEncapsulation.routeName:
        return MaterialPageRoute(builder: (_) => const LearnEncapsulation());
      case LearnGetterSetter.routeName:
        return MaterialPageRoute(builder: (_) => const LearnGetterSetter());
      case LearnIsolateScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LearnIsolateScreen());
      case LearnGetItServiceLocator.routeName:
        return MaterialPageRoute(
            builder: (_) => const LearnGetItServiceLocator());
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: Center(child: Text("Default Route"))));
    }
  }
}

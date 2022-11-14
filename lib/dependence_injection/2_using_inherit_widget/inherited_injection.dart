import 'package:demo_app/dependence_injection/2_using_inherit_widget/app_info.dart';
import 'package:flutter/cupertino.dart';

class InheritedInjection extends InheritedWidget {
  final AppInfo app_info = AppInfo();

  InheritedInjection({super.key, required super.child});

  static InheritedInjection of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedInjection>() as InheritedInjection;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

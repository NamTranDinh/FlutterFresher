import 'package:demo_app/get/page_1.dart';
import 'package:demo_app/get/page_2.dart';
import 'package:demo_app/get/page_3.dart';
import 'package:demo_app/get/routes_manager/routes.dart';
import 'package:get/get.dart';

class RoutesImpl extends Routes {
  @override
  String get page1 => '/';

  @override
  String get page2 => '/page2';

  @override
  String get page3 => '/page3';

  @override
  List<GetPage> get routes => [
        GetPage(
          name: page1,
          page: () => const Page1(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 350),
        ),
        GetPage(
          name: page2,
          page: () => const Page2(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 350),
        ),
        GetPage(
          name: page3,
          page: () => const Page3(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 350),
        ),
      ];
}

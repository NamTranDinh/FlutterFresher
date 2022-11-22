import 'package:get/get.dart';

abstract class Routes {
  static Routes get instance => Get.find<Routes>();

  List<GetPage> get routes;

  String get page1;

  String get page2;

  String get page3;
}

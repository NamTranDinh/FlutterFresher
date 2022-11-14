import 'package:demo_app/dependence_injection/3_using_getIt/app_info.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupProj() {
  getIt.registerFactory<AppInfo>(
    () => AppInfo(),
  );
}

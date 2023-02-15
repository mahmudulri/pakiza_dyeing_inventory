import 'package:get/get.dart';
import 'package:pakiza_dyeing_inventory/app/modules/dashboard/views/user_dashboard.dart';
import 'package:pakiza_dyeing_inventory/app/modules/details/views/details_view.dart';

import 'package:pakiza_dyeing_inventory/app/modules/home/bindings/home_binding.dart';
import 'package:pakiza_dyeing_inventory/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER_DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_DASHBOARD,
      page: () => UserDashBoard(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS_VIEW,
      page: () => DetailsView(),
      // binding: HomeBinding(),
    ),
  ];
}

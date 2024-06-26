import 'package:eventplan_mobile/app/modules/auth/controllers/auth_controller.dart';
import 'package:eventplan_mobile/app/modules/events/bindings/events_binding.dart';
import 'package:eventplan_mobile/app/modules/events/controllers/events_controller.dart';
import 'package:eventplan_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:eventplan_mobile/app/modules/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      initialBinding: EventsBinding()
    ),
  );
  Get.put(AuthController());
  Get.put(MenuController());
  Get.put(HomeController());
  Get.put(EventsController());
  Get.put(ProfileController());
}
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir/app/controllers/auth_controller.dart';
import 'package:kasir/app/utils/mainpage.dart';
import 'package:kasir/app/utils/splash_screen.dart';

import 'app/modules/koki/views/koki_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: KokiView(),
    // home: MainPage(),
  ));
}

// class MyApp extends StatelessWidget {
//   final authC = Get.put(AuthController(), permanent: true);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: Future.delayed(const Duration(seconds: 2)),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Obx(
//               () => GetMaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 title: "Serving APPS",
//                 initialRoute: authC.isSkipIntro.isTrue
//                     ? authC.isAuth.isTrue
//                         ? Routes.HOME
//                         : Routes.LOGIN
//                     : Routes.INTRODUCTION,
//                 getPages: AppPages.routes,
//               ),
//             );
//           }
//           return SplashScreen();
//         });
//   }
// }

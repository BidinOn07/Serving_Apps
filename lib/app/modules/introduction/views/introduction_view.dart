import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../routes/login/views/login_view.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Selamat Datang di SERVING APPS",
          body: "Aplikasi yang di khususkan untuk Kasir, Koki, dan Waiters",
          image: const Center(
            child: Icon(Icons.home, size: 50.0),
          ),
        ),
        PageViewModel(
          title: "Halaman Dua",
          body: "Deskripsi Halaman Dua.",
          image: const Center(
            child: Icon(Icons.waving_hand, size: 50.0),
          ),
        ),
        PageViewModel(
          title: "Halaman Tiga",
          body: "Deskripsi Halaman Tiga.",
          image: const Center(
            child: Icon(Icons.person, size: 50.0),
          ),
        ),
      ],
      showSkipButton: true,
      skip: const Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      next: const Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
      onDone: () {
        Get.to(const LoginView());
      },
      onSkip: () {
        Get.to(const LoginView());
      },
      // dotsDecorator: DotsDecorator(
      //   size: const Size.square(10.0),
      //   activeSize: const Size(20.0, 10.0),
      //   color: Colors.black26,
      //   spacing: const EdgeInsets.symmetric(horizontal: 3.0),
      //   activeShape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(25.0),
      //   ),
      // ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../modules/home/views/home_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container(
            //   child: Center(
            //     child: Image.asset(
            //       'assets/images/login.jpg',
            //       height: 100,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'EMAIL',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
            TextFormField(
              decoration: const InputDecoration(
                // border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: "Masukan Email",
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'PASSWORD',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
            Obx(() {
              return TextFormField(
                obscureText: controller.showPassword.value,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Masukan Password",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                  suffixIcon: InkWell(
                      onTap: () {
                        controller.showPassword.value =
                            !controller.showPassword.value;
                      },
                      child: Icon(
                          controller.showPassword.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white)),
                ),
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: () {
                  Get.to(() => HomeView());
                },
                borderRadius: BorderRadius.circular(5),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

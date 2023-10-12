import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_menu_controller.dart';

class DetailMenuView extends GetView<DetailMenuController> {
  const DetailMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailMenuView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailMenuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

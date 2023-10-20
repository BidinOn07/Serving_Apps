// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart' hide Badge;

import 'package:get/get.dart';
import 'package:kasir/app/modules/detail-menu/views/detail_menu_view.dart';
import 'package:kasir/app/utils/constant.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pesanan',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: kColorPrimary,
          ),
        ),
        backgroundColor: kColor,
        automaticallyImplyLeading: false,
        titleSpacing: 30,
      ),
      body: ListView(
        children: [
          Container(
            // height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    onTap: () {
                      Get.to(() => DetailMenuView());
                    },
                    leading: CircleAvatar(
                      backgroundColor: kColorPrimary,
                      child: Text(
                        'Meja 1',
                        style: TextStyle(
                          color: kColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      'Nama : Saka\nTotal Order : 3\nTotal Harga : 15.000',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir/app/modules/waiters/controllers/waiters_controller.dart';
import 'package:kasir/app/modules/waiters/views/order_form.dart';
import 'package:kasir/app/modules/waiters/views/order_item.dart';
import 'package:kasir/app/utils/constant.dart';

class WaitersView extends GetView<WaitersController> {
  const WaitersView({Key? key}) : super(key: key);
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
        toolbarHeight: 80,
      ),
      body: ListView(
        children: [
          Container(
            // height: 800,
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
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    textColor: kColorPrimary,
                    onTap: () {
                      Get.to(() => OrderItem());
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: kColorPrimary,
                      child: Text(
                        'Meja 1',
                        style: TextStyle(
                          color: kColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      'Pesanan : 2\nDiantar : 1\nBelum diantar : 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    textColor: kColorPrimary,
                    onTap: () {
                      Get.to(() => OrderForm());
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: kColorPrimary,
                      child: Text(
                        'Meja 2',
                        style: TextStyle(
                          color: kColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      'Tidak Ada Pesanan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

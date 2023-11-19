// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir/app/utils/constant.dart';
import '../../pembayaran/views/pembayaran_view.dart';
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
            color: kColor,
          ),
        ),
        backgroundColor: kColorInfo,
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
                for (int i = 0; i < 4; i++)
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
                        Get.to(() => PembayaranView());
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
                        'Nama : Saka\nTotal Order : 2\nTotal Harga : 20000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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

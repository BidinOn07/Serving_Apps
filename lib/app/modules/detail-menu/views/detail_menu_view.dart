// ignore_for_file: prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/constant.dart';
import '../../pembayaran/views/pembayaran_view.dart';
import '../controllers/detail_menu_controller.dart';
import 'diskon.dart';
import 'orderitemsample.dart';

class DetailMenuView extends GetView<DetailMenuController> {
  const DetailMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DetailOrderAppBar(),
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
                OrderItemSample(),
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kColorPrimary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Get.to(() => Diskon());
                          },
                          icon: Icon(
                            EvaIcons.plusCircleOutline,
                            color: kColor,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Masukkan Diskon',
                          style: TextStyle(
                            color: kColorPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Material(
                  color: kColorPrimary,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => PembayaranView());
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        'Bayar Sekarang',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: kColor,
                        ),
                        textAlign: TextAlign.center,
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

class DetailOrderAppBar extends StatelessWidget {
  const DetailOrderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor,
      padding: EdgeInsets.all(25),
      child: Text(
        'Detail Orderan',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: kColorPrimary,
        ),
      ),
    );
  }
}

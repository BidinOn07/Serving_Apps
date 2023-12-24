import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir/app/modules/koki/controllers/koki_controller.dart';
import 'package:kasir/app/modules/koki/models/menu_item.dart';
import 'package:kasir/app/modules/koki/views/koki_view.dart';
import 'package:kasir/app/modules/koki/widgets/koki_item.dart';

import '../../../utils/constant.dart';

class KokiMenu extends GetView<KokiController> {
  const KokiMenu({Key? key}) : super(key: key);

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
        // automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      body: SafeArea(
        child: ListView(
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
                  KokiItem(menuItem: item1),
                  KokiItem(menuItem: item2),
                  KokiItem(menuItem: item3),
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: kColorPrimary,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => KokiView());
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Text(
                            'Kirim Pesanan',
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/constant.dart';
import '../controllers/laporan_controller.dart';

class LaporanView extends GetView<LaporanController> {
  LaporanView({Key? key}) : super(key: key);

  TextEditingController totalPesananController = TextEditingController();
  TextEditingController totalMakananController = TextEditingController();
  TextEditingController totalMinumanController = TextEditingController();
  TextEditingController totalPemasukanController = TextEditingController();
  TextEditingController totalPengeluaranController = TextEditingController();
  TextEditingController jumlahTotalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Laporan Harian',
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Total Pesanan : ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kColorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: totalPesananController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Total Makanan  : ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kColorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: totalMakananController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Total Minuman : ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kColorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: totalMinumanController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Total Pemasukan : ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kColorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: totalPemasukanController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Total Pengeluaran : ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kColorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: totalPengeluaranController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Jumlah Total : ',
                        style: TextStyle(
                            fontSize: 18,
                            color: kColorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: jumlahTotalController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Material(
                        color: kColorPrimary,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            margin: EdgeInsets.all(3),
                            child: Text(
                              'Kirim Laporan',
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
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

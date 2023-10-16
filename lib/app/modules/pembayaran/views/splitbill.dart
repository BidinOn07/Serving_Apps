// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constant.dart';
import '../../../utils/mainpage.dart';

class SplitBillView extends StatelessWidget {
  const SplitBillView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SplitBillAppBar(),
          Container(
            // height: 900,
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
                      _buildInfoRow('No. Meja : ', '01'),
                      _buildInfoRow('Nama : ', 'Saka'),
                      _buildInfoRow('Total : ', '10.000'),
                      _buildInfoRow('Orderan : ', '3'),
                      _buildInfoRow('Jumlah Pembayaran : ', '15.000'),
                      _buildInfoRow('Kembalian : ', '5.0000'),
                      _buildInfoRow('Tunai : ', ' ? '),
                      _buildInfoRow('Non - Tunai : ', ' ? '),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Material(
            color: kColorPrimary,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                _nextPaymentOptions(context); // Menampilkan pop-up pembayaran
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                // width: 350,
                width: double.infinity, // Membuat tombol memenuhi lebar layar
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Sudah Dibayar',
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
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: kColorPrimary,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

void _nextPaymentOptions(BuildContext context) {
  // Kembali ke halaman awal menggunakan Get.to (MainPage)
  Get.offAll(MainPage());

  // Cetak pesan otomatis
  print('Pembayaran sudah berhasil dilakukan.');
}

class SplitBillAppBar extends StatelessWidget {
  const SplitBillAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor,
      padding: EdgeInsets.all(25),
      child: Text(
        'Pembayaran Terbagi',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: kColorPrimary,
        ),
      ),
    );
  }
}

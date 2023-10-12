// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir/app/modules/pembayaran/views/cash.dart';
import 'package:kasir/app/modules/pembayaran/views/cashless.dart';
import 'package:kasir/app/utils/constant.dart';

import '../controllers/pembayaran_controller.dart';

class PembayaranView extends GetView<PembayaranController> {
  const PembayaranView({Key? key}) : super(key: key);

  void _showPaymentOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logika pembayaran tunai
                  Navigator.pop(context); // Tutup pop-up setelah pembayaran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CashView()),
                  );
                },
                child: Text(
                  'Pembayaran Tunai',
                  style: TextStyle(
                    fontSize: 18,
                    color: kColorPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Logika pembayaran Non - Tunai
                  Navigator.pop(context); // Tutup pop-up setelah pembayaran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CashLessView()),
                  );
                },
                child: Text(
                  'Pembayaran Non - Tunai',
                  style: TextStyle(
                    fontSize: 18,
                    color: kColorPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Logika pembayaran terpisah
                  Navigator.pop(context); // Tutup pop-up setelah pembayaran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CashLessView()),
                  );
                },
                child: Text(
                  'Pembayaran Terbagi',
                  style: TextStyle(
                    fontSize: 18,
                    color: kColorPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PembayaranAppBar(),
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
                      _buildInfoRow('No. Meja', '01'),
                      _buildInfoRow('Nama', 'Saka'),
                      _buildInfoRow('Total', '10.000'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity, // Membuat tombol memenuhi lebar layar
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                _showPaymentOptions(context); // Menampilkan pop-up pembayaran
              },
              child: Text(
                'Lanjutkan Pembayaran',
                style: TextStyle(
                  fontSize: 18,
                  color: kColorPrimary,
                  fontWeight: FontWeight.bold,
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

class PembayaranAppBar extends StatelessWidget {
  const PembayaranAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor,
      padding: EdgeInsets.all(25),
      child: Text(
        'Pembayaran',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: kColorPrimary,
        ),
      ),
    );
  }
}

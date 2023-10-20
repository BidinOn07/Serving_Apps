// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_formatter/money_formatter.dart';

import '../../../utils/constant.dart';
import '../../../utils/mainpage.dart';

class CashView extends StatefulWidget {
  const CashView({Key? key}) : super(key: key);

  @override
  _CashViewState createState() => _CashViewState();
}

class _CashViewState extends State<CashView> {
  TextEditingController jumlahPembayaranController = TextEditingController();
  double total = 10000; // Ubah sesuai dengan total pesanan
  double kembalian = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembayaran Tunai',
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
                      _buildInfoRow('Orderan : ', '3'),
                      _buildInfoRow('Total : ', '10000'),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        // padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              title: Text(
                                'Pesanan : ',
                                style: TextStyle(
                                    color: kColorPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'kopi susu :\nes teh :',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: kColorPrimary,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '1\n1',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: kColorPrimary,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        controller: jumlahPembayaranController,
                        decoration: InputDecoration(
                          labelText: 'Jumlah Pembayaran',
                        ),
                        keyboardType: TextInputType.number,
                        onChanged:
                            _calculateChange, // Menghitung kembalian saat jumlah pembayaran berubah
                      ),
                      Text(
                        'Kembalian : Rp ${MoneyFormatter(amount: kembalian).output.withoutFractionDigits} ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
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
                  double pembayaran =
                      double.tryParse(jumlahPembayaranController.text) ?? 0;
                  if (pembayaran < total) {
                    // Jika pembayaran kurang dari atau sama dengan 0, tampilkan pesan error
                    Get.dialog(
                      AlertDialog(
                        title: Text('Gagal'),
                        content: Text('Masukan Jumlah Pembayaran!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Get.back(); // Tutup dialog error
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    (pembayaran == total);
                    {
                      _nextPaymentOptions(context);
                    }
                    // Jika pembayaran lebih dari 0, lanjutkan dengan pembayaran
                    // Menampilkan pop-up pembayaran
                  }
                },
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
              )),
        ],
      ),
    );
  }

  void _calculateChange(String value) {
    double pembayaran = double.tryParse(value) ?? 0;
    setState(() {
      kembalian = pembayaran - total;
      if (kembalian < 0 || pembayaran <= 0) {
        // Jika kembalian negatif atau pembayaran kurang dari atau sama dengan 0, atur kembalian ke 0
        kembalian = 0;
      }
    });
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
  Get.offAll(MainPage());

  print('Pembayaran sudah berhasil dilakukan.');
}

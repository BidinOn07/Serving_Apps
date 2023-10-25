// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_formatter/money_formatter.dart';

import '../../../utils/constant.dart';
import '../../../utils/mainpage.dart';

class PembayaranView extends StatefulWidget {
  const PembayaranView({Key? key}) : super(key: key);

  @override
  _PembayaranViewState createState() => _PembayaranViewState();
}

class _PembayaranViewState extends State<PembayaranView> {
  bool isCashActive = false;
  bool isCashlessActive = false;
  TextEditingController jumlahPembayaranController = TextEditingController();
  int total = 20000; // Ubah sesuai dengan total pesanan
  int kembalian = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pembayaran',
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
            height: 700,
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
                      _buildInfoRow('Orderan : ', '2'),
                      _buildInfoRow('Total : ', '10000'),
                      _buildInfoRow('Jumlah Yang Sudah Dibayar : ', '10000'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              title: Text(
                                'Pesanan : ',
                                style: TextStyle(
                                    color: kColorPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'kopi susu : 1x\nes teh : 1x',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: kColorPrimary,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '15000\n5000',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: kColorPrimary,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                      // Text(
                      //   'Kembalian : Rp ${MoneyFormatter(amount: kembalian.toDouble()).output.withoutFractionDigits} ',
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     color: kColorPrimary,
                      //     fontFamily: 'Roboto',
                      //     fontWeight: FontWeight.normal,
                      //   ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isCashActive = !isCashActive;
                              if (isCashActive) {
                                isCashlessActive =
                                    false; // Menonaktifkan Cashless saat Cash aktif
                              }
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: isCashActive ? kColorPrimary : kShadow,
                                ),
                                child: Center(
                                  child: Text(
                                    'Cash',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: isCashActive ? kColor : kColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isCashlessActive = !isCashlessActive;
                                    if (isCashlessActive) {
                                      isCashActive =
                                          false; // Menonaktifkan Cash saat Cashless aktif
                                    }
                                  });
                                },
                                child: Container(
                                  width: 120,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: isCashlessActive
                                        ? kColorPrimary
                                        : kShadow,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Cashless',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            isCashlessActive ? kColor : kColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: kColorPrimary,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            // Tampilkan dialog ketika tombol ditekan
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Info'),
                                  content: Text('Pembayaran Berhasil'),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('OK'),
                                      onPressed: () {
                                        // Tutup dialog ketika OK ditekan
                                        Navigator.of(context).pop();
                                        // Navigasi kembali ke MainPage setelah dialog ditutup
                                        Get.off(() => MainPage());
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
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
          ),
        ],
      ),
    );
  }

  void _calculateChange(String value) {
    double pembayaran = double.tryParse(value) ?? 0;
    setState(() {
      kembalian = (pembayaran - total).toInt();
      if (kembalian < 0 || pembayaran <= 0) {
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
              color: kColorPrimary,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

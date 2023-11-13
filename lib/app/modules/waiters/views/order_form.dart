import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir/app/utils/constant.dart';

class OrderForm extends StatelessWidget {
  const OrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buat Pesanan',
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
      body: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Color(0xFFEDECF2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Pemesan',
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Tipe Order',
              ),
              value: 'Dine In',
              items: ['Dine In', 'Delivery', 'Take Away']
                  .map((type) => DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
              onChanged: (value) {
                // Tangani perubahan nilai dropdown
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    // Tangani perubahan nilai checkbox
                  },
                ),
                Text('Ceklis (Bisa Diubah)'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Pindah ke halaman QR Code
                Get.to(() => QRCodeView());
              },
              child: Text('Buat Pesanan Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}

class QRCodeView extends StatelessWidget {
  // Implementasikan tampilan QR Code sesuai kebutuhan
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code'),
        // Tambahkan konfigurasi tambahan untuk tampilan QR Code
      ),
      body: Center(
        child: Text('Ini adalah tampilan QR Code'),
      ),
    );
  }
}

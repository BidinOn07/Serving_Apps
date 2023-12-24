// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir/app/utils/constant.dart';

class OrderForm extends StatefulWidget {
  const OrderForm({Key? key}) : super(key: key);
  @override
  State<OrderForm> createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  String? selectedOrderType;
  bool isCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buat Pesanan',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: kColor,
          ),
        ),
        backgroundColor: kColorInfo,
        // automaticallyImplyLeading: false,
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Tipe Order',
              ),
              value: selectedOrderType,
              items: ['Dine In', 'Delivery', 'Take Away']
                  .map((type) => DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedOrderType = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Checkbox(
                  checkColor: kColor,
                  activeColor: kColorPrimary,
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isCheckboxChecked
                  ? () {
                      Get.to(() => QRCodeView());
                    }
                  : null,
              child: Text(
                'Buat Pesanan Sekarang',
                style: TextStyle(color: kColor),
              ),
              style: ElevatedButton.styleFrom(
                primary: kColorPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QRCodeView extends StatelessWidget {
  const QRCodeView({super.key});

  // Implementasikan tampilan QR Code sesuai kebutuhan
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QR Code',
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
      body: Center(
        child: Text('Ini adalah tampilan QR Code'),
      ),
    );
  }
}

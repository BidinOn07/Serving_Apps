// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CashView extends StatelessWidget {
  const CashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran Tunai'),
      ),
      body: Center(
        child: Text('Halaman Pembayaran Tunai'),
      ),
    );
  }
}

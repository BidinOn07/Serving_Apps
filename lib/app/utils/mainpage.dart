// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kasir/app/modules/laporan/views/laporan_view.dart';

import 'constant.dart';
import '../modules/status/views/status_view.dart';
import '../modules/home/views/home_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  final List<Widget> _pages = [
    // Masukkan halaman di sini
    HomeView(), // halaman
    StatusView(),
    LaporanView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: kColorPrimary,
        buttonBackgroundColor: kColorPrimary,
        height: 70,
        items: <Widget>[
          Icon(Icons.list_alt_outlined, size: 30, color: Colors.white),
          Icon(Icons.book_outlined, size: 30, color: Colors.white),
          Icon(Icons.report, size: 30, color: Colors.white),
          //item sesuai kebutuhan
        ],
        onTap: (int index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}

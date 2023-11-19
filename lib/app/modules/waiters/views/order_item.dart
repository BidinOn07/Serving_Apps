import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir/app/modules/waiters/views/waiters_view.dart';
import 'package:kasir/app/modules/waiters/widgets/waiters_item.dart';


import '../../../utils/constant.dart';
import '../models/menu.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  Set<String> selectedItems = {}; // Set untuk menyimpan id item yang dipilih

  void toggleSelectAll() {
    setState(() {
      if (selectedItems.length < menuItems.length) {
        selectedItems = Set.from(menuItems.map((item) => item.id));
      } else {
        selectedItems = {};
      }
    });
  }

  void toggleSelectItem(String itemId) {
    setState(() {
      // Implementasi logika untuk item yang di-klik di sini
      if (selectedItems.contains(itemId)) {
        selectedItems.remove(itemId);
      } else {
        selectedItems.add(itemId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Pesanan',
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
            for (var menuItem in menuItems)
              WaitersItem(
                menuOrder: menuItem,
                isSelected: selectedItems.contains(menuItem.id),
                onSelect: (itemId) {
                  toggleSelectItem(itemId);
                },
              ),
            GestureDetector(
              onTap: () {
                toggleSelectAll();
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pilih Semua',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kColorPrimary,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  padding: EdgeInsets.all(10),
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(padding: EdgeInsets.all(8.0),
                child: Material(
                  color: kColorPrimary,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Get.to(()=>WaitersView());
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                        ),
                        child: Text(
                          'Kembali',
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
                ),),
              ],
            ),
          ),
        ],),)
    );
  }
}

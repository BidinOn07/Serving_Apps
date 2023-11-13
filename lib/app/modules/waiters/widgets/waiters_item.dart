// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kasir/app/modules/waiters/models/menu.dart';
import 'package:kasir/app/utils/constant.dart';

class WaitersItem extends StatefulWidget {
  final Menu menu;

  const WaitersItem({
    required this.menu,
    Key? key,
  }) : super(key: key);

  @override
  State<WaitersItem> createState() => _WaitersItemState();
}

class _WaitersItemState extends State<WaitersItem> {
  bool isRadioActive = false;
  TextEditingController descriptionController = TextEditingController();
  String? selectedValue;
  int item = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isRadioActive = !isRadioActive;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isRadioActive ? kColorPrimary : kShadow,
                    ),
                    child: isRadioActive
                        ? Icon(
                            Icons.check,
                            size: 18,
                            color: kColor,
                          )
                        : null, // Tampilkan ikon ceklis jika radio button aktif
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage(widget.menu.photo),
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.menu
                            .name, // Gunakan widget.menu.name untuk menampilkan nama item
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      Text(
                        widget.menu
                            .price, // Gunakan widget.menu.price untuk menampilkan harga item
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      SizedBox(
                          height:
                              8), // Tambahkan spasi di antara harga dan deskripsi
                      TextFormField(
                        // controller: descriptionController,
                        decoration: InputDecoration(
                          labelText: 'Deskripsi',
                          labelStyle: TextStyle(color: kColorPrimary),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kColorPrimary),
                          ),
                        ),
                        style: TextStyle(fontSize: 5, color: kColorPrimary),
                        // onChanged: (value) {
                        //   // Update deskripsi menu saat pengguna memasukkan teks
                        //   widget.menu.description = value;
                        // },
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(
                          EvaIcons.minus,
                          size: 20,
                          color: kColorPrimary,
                        ),
                        onPressed: () {
                          setState(() {
                            if (item > 0) {
                              item--; // Mengurangi nilai item jika lebih besar dari 0
                            }
                          });
                        },
                      ),
                      Text(
                        '$item',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          EvaIcons.plus,
                          size: 20,
                          color: kColorPrimary,
                        ),
                        onPressed: () {
                          setState(() {
                            item++; // Menambah nilai item
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

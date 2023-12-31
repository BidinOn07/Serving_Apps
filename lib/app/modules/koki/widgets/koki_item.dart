// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kasir/app/utils/constant.dart';

import '../models/menu_item.dart';

class KokiItem extends StatefulWidget {
  final MenuItem menuItem;

  const KokiItem({
    required this.menuItem,
    Key? key,
  }) : super(key: key);

  @override
  State<KokiItem> createState() => _KokiItemState();
}

class _KokiItemState extends State<KokiItem> {
  bool isRadioActive = false;
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
                    image: AssetImage(widget.menuItem.photo),
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
                        widget.menuItem
                            .name, // Gunakan widget.menuItem.name untuk menampilkan nama item
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      Text(
                        widget.menuItem
                            .price, // Gunakan widget.menuItem.price untuk menampilkan harga item
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      SizedBox(
                          height:
                              8), // Tambahkan spasi di antara harga dan deskripsi
                      Text(
                        'Deskripsi: ' +
                            widget.menuItem
                                .description, // Ganti widget.menuItem.description dengan property yang sesuai untuk deskripsi item
                        style: TextStyle(
                          fontSize: 14,
                          color: kColorPrimary,
                        ),
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

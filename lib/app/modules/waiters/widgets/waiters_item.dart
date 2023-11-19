// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kasir/app/utils/constant.dart';

import '../models/menu.dart';

class WaitersItem extends StatefulWidget {
  final MenuOrder menuOrder;
  final bool isSelected;
  final ValueChanged<String> onSelect;

  const WaitersItem({
    required this.menuOrder,
    required this.isSelected,
    required this.onSelect,
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
          height: 180,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.onSelect(widget.menuOrder.id);
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
                      color: widget.isSelected ? kColorPrimary : kShadow,
                    ),
                    child: widget.isSelected
                        ? Icon(
                            Icons.check,
                            size: 18,
                            color: kColor,
                          )
                        : null,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage(widget.menuOrder.photo),
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
                        widget.menuOrder
                            .name, // Gunakan widget.menuOrder.name untuk menampilkan nama item
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      Text(
                        widget.menuOrder
                            .price, // Gunakan widget.menuOrder.price untuk menampilkan harga item
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kColorPrimary,
                        ),
                      ),
                      SizedBox(
                          height:
                              8), // Tambahkan spasi di antara harga dan deskripsi
                      Expanded(
                        child: TextField(
                        controller: descriptionController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'deskripsi',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                        
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

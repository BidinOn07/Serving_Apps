import 'package:flutter/material.dart';

class OrderForm extends StatefulWidget {
  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  String? name;
  String? orderType;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Nama Pemesan'),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          DropdownButtonFormField<String>(
            value: orderType,
            items: ['Dine In', 'Delivery', 'Take Away']
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                .toList(),
            onChanged: (value) {
              setState(() {
                orderType = value;
              });
            },
            decoration: InputDecoration(labelText: 'Tipe Order'),
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              Text('Sudah Diantar'),
            ],
          ),
          ElevatedButton(
            onPressed: isChecked
                ? null
                : () {
                    // Logika untuk membuat QR code
                  },
            child: Text('Buat QR Code'),
          ),
        ],
      ),
    );
  }
}

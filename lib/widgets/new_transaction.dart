import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titlecontroller,
                // onChanged: (val) {
                //   titlinput = val;
                //},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'amount'),
                controller: amountcontroller,
                // onChanged: ((value) => amountinput = value),
              ),
              TextButton(
                onPressed: () {
                  print(titlecontroller.text);
                  print(amountcontroller.text);
                },
                child: Text(
                  'add Transaction',
                  style: TextStyle(color: Colors.purple),
                ),
              )
            ]),
      ),
    );
  }
}

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  NewTransaction(this.addTx);

  void submitData({String value: 'i'}) {
    final enterdTitle = titlecontroller.text;
    final enterdAmount = double.parse(amountcontroller.text);

    if (enterdTitle.isEmpty || enterdAmount <= 0) {
      return;
    }

    addTx(enterdTitle, enterdAmount);
  }

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
                onSubmitted: (_) => submitData(),
                // onChanged: (val) {
                //   titlinput = val;
                //},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'amount'),
                controller: amountcontroller,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData(),
                // onChanged: ((value) => amountinput = value),
              ),
              TextButton(
                onPressed: submitData,
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

import 'package:flutter/material.dart';
import './transactionlist.dart';
import './new_transaction.dart';
import '../models/Transaction.dart';

class Usertransaction extends StatefulWidget {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New jacket', amount: 169.99, date: DateTime.now())
  ];

  @override
  State<Usertransaction> createState() => _UsertransactionState();
}

class _UsertransactionState extends State<Usertransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(), TransActionList()],
    );
  }
}

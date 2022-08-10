import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: Text(
                  "\$ ${transactions[index].amount.toString()}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(
                children: [
                  Text(
                    transactions[index].title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  Text(
                    DateFormat.yMMMd().format(transactions[index].date),
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
          ),
        ),
        itemCount: transactions.length, // how many items should be build
      ),
    );
  }
}

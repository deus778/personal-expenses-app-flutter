import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function _addNewTransactionFn;

  NewTransaction(this._addNewTransactionFn);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                _addNewTransactionFn(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text("Add transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}

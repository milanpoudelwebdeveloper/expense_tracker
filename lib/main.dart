import 'package:flutter/services.dart';

import './transactionCard.dart';
import './transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Transaction> transactions = [
    Transaction(
      id: "t1",
      title: "Milan Poudel",
      amount: 10.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Ram Poudel",
      amount: 11.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Ram Poudel",
      amount: 11.0,
      date: DateTime.now(),
    ),
  ];
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Expense App",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Card(
                elevation: 4,
                child: Text('Chart'),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Title",
                      ),
                      controller: titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Amount",
                      ),
                      controller: amountController,
                    ),
                    TextButton(
                      onPressed: () => {print(titleController.text)},
                      child: Text(
                        'Add transaction',
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ...(transactions.map(
                  (transaction) => TransactionCard(
                    item: transaction,
                  ),
                )).toList()
              ],
            )
          ],
        ),
      ),
    );
  }
}

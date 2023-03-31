import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction item;

  const TransactionCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            padding: const EdgeInsets.all(
              10,
            ),
            child: Text(
              '\$${item.amount}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                DateFormat('yyyy-MM-dd').format(item.date),
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

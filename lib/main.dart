import 'package:flutter/material.dart';
import './transaction_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List transactions = [
    {
      "id": 't1',
      "title": 'New Shoes',
      "amount": 69.99,
      "date": DateTime.now(),
    },
    {
      "id": 't2',
      "title": 'Weekly Groceries',
      "amount": 16.53,
      "date": DateTime.now(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Expense',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personal Expense'),
          actions: const [Icon(Icons.add)],
        ),
        body: Column(
          children: [
            TranscationCard(transactions[0]),
            TranscationCard(transactions[1]),
          ],
        ),
      ),
    );
  }
}

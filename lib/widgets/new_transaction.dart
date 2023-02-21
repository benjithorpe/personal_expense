import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTransaction, {super.key});

  final Function addTransaction;
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Item Name",
              ),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Item Price",
              ),
              controller: priceController,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => addTransaction(
                titleController.text,
                double.parse(priceController.text),
              ),
              child: const Text("Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}

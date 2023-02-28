import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTransaction, {super.key});

  final Function addTransaction;
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  void submitData() {
    final itemText = titleController.text;
    final itemPrice = double.parse(priceController.text);

    if (itemText.isEmpty || itemPrice <= 0) return;

    addTransaction(itemText, itemPrice);
  }

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
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Item Price",
              ),
              controller: priceController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: submitData,
              child: const Text("Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}

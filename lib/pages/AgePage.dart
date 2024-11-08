// AgePage.dart
import 'package:flutter/material.dart';
import 'HomePage.dart';

class AgePage extends StatelessWidget {
  const AgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController ageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Enter Age')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Age'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

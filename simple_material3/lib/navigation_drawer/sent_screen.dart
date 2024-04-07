import 'package:flutter/material.dart';

class SentScreen extends StatelessWidget {
  const SentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sent"),
            SizedBox(
              height: 50,
            ),
            FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}

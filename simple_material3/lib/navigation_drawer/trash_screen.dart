import 'package:flutter/material.dart';

class TrashScreen extends StatelessWidget {
  const TrashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Trash"),
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

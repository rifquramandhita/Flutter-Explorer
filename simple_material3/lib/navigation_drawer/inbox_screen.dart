import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Inbox"),
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

import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Favorite"),
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

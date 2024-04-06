import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
              child: SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Center(child: Text('Elevated'))),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.surfaceVariant,
            elevation: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
              child: SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Center(child: Text('Filled'))),
            ),
          ),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
              child: SizedBox(
                  width: double.maxFinite,
                  height: 100,
                  child: Center(child: Text('Outlined'))),
            ),
          ),
        ],
      ),
    );
  }
}

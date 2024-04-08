import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_provider/home/home_notifier.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  late HomeNotifer notifer;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeNotifer>(
      create: (context) => HomeNotifer(),
      builder: (context, child) => _build(context),
    );
  }

  _build(BuildContext context) {
    notifer = Provider.of<HomeNotifer>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Apps'),
      ),
      body: (notifer.isLoading)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Angka saat ini adalah",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    notifer.number.toString(),
                    style: TextStyle(fontSize: 75),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton.filled(
                          onPressed: () {
                            notifer.remove();
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 40,
                          )),
                      IconButton.filled(
                          onPressed: () {
                            notifer.add();
                          },
                          icon: Icon(
                            Icons.add,
                            size: 40,
                          ))
                    ],
                  )
                ],
              ),
            ),
    );
  }
}

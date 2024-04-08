import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_get_it/home/home_notifier.dart';
import 'package:simple_get_it/injection.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  late HomeNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeNotifier>(
      create: (context) => sl(),
      builder: (context, child) => _build(context),
    );
  }

  _build(BuildContext context) {
    notifier = Provider.of<HomeNotifier>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(notifier.number.toString(), style: TextStyle(fontSize: 50),),
      SizedBox(height: 50,),
      IconButton.filled(onPressed: (){notifier.add();}, icon: Icon(Icons.add, size: 50,))
    ],),);
  }
}

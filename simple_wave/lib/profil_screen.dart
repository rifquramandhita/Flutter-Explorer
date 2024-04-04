import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class ProfilScreen extends StatefulWidget {
  ProfilScreen({Key? key}) : super(key: key);

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  double marginHorizontal = 16.0;

  @override
  Widget build(BuildContext context) {
    marginHorizontal = 16.0 +
        (MediaQuery.of(context).size.width > 512
            ? (MediaQuery.of(context).size.width - 512) / 2
            : 0);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            child: Transform.rotate(
              angle: 180 * pi / 180,
              child: WaveWidget(
                config: CustomConfig(
                  colors: [
                    Colors.blue[200]!,
                    Colors.blue[400]!,
                    Colors.blue[600]!,
                    Colors.blue,
                  ],
                  durations: [32000, 21000, 18000, 5000],
                  heightPercentages: [0.21, 0.22, 0.23, 0.22],
                ),
                size: Size(double.infinity, double.infinity),
                waveAmplitude: 0,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            size: 90,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('FourCoding')
                    ]),
              ),
              _cardItem('Username', 'fourcoding'),
              _cardItem('Email', 'example@gmail.com'),
              _cardItem('No HP', '+628xxxxxxx'),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: FilledButton(
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: FilledButton.styleFrom(
                      backgroundColor: Colors.blueAccent[100]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _cardItem(String label, String value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.maxFinite,
      child: Card(
        color: Colors.blue[100],
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
              ),
              Text(value, style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}

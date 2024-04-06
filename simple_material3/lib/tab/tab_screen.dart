import 'package:flutter/material.dart';
import 'package:simple_material3/tab/audio_screen.dart';
import 'package:simple_material3/tab/photo_screen.dart';
import 'package:simple_material3/tab/video_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabsState();
}

class _TabsState extends State<TabScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  List<Widget> listPage = [VideoScreen(), PhotoScreen(), AudioScreen()];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab"),
        bottom: TabBar(
          controller: _tabController,
          onTap: (value) {
            setState(() {});
          },
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.videocam_outlined),
              text: 'Video',
              iconMargin: EdgeInsets.only(bottom: 0.0),
            ),
            Tab(
              icon: Icon(Icons.photo_outlined),
              text: 'Photos',
              iconMargin: EdgeInsets.only(bottom: 0.0),
            ),
            Tab(
              icon: Icon(Icons.audiotrack_sharp),
              text: 'Audio',
              iconMargin: EdgeInsets.only(bottom: 0.0),
            ),
          ],
        ),
        // TODO: Showcase secondary tab bar https://github.com/flutter/flutter/issues/111962
      ),
      body: listPage[_tabController.index],
    );
  }
}

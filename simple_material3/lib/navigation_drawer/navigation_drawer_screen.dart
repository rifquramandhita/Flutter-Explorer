import 'package:flutter/material.dart';
import 'package:simple_material3/navigation_drawer/favorite_screen.dart';
import 'package:simple_material3/navigation_drawer/inbox_screen.dart';
import 'package:simple_material3/navigation_drawer/sent_screen.dart';
import 'package:simple_material3/navigation_drawer/trash_screen.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({super.key});

  @override
  State<NavigationDrawerScreen> createState() =>
      _NavigationDrawerSectionState();
}

class _NavigationDrawerSectionState extends State<NavigationDrawerScreen> {
  int navDrawerIndex = 0;
  List<Widget> listPage = [
    InboxScreen(),
    SentScreen(),
    FavoriteScreen(),
    TrashScreen()
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text("Navigation Drawer")),
        body: listPage[navDrawerIndex],
        drawer: _drawerBuild());
  }

  _drawerBuild() {
    return NavigationDrawer(
      onDestinationSelected: (selectedIndex) {
        setState(() {
          _scaffoldKey.currentState!.closeDrawer();
          navDrawerIndex = selectedIndex;
        });
      },
      selectedIndex: navDrawerIndex,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'Mail',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          label: Text("Inbox"),
          icon: Icon(Icons.mail_outline),
          selectedIcon: Icon(Icons.mail),
        ),
        NavigationDrawerDestination(
          label: Text("Sent"),
          icon: Icon(Icons.send_outlined),
          selectedIcon: Icon(Icons.send),
        ),
        NavigationDrawerDestination(
          label: Text("Favorite"),
          icon: Icon(Icons.favorite_outline),
          selectedIcon: Icon(Icons.favorite),
        ),
        NavigationDrawerDestination(
          label: Text("Trash"),
          icon: Icon(Icons.delete_outline),
          selectedIcon: Icon(Icons.delete),
        ),
      ],
    );
  }
}

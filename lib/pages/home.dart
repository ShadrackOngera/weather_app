import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  final List<Widget> _pages = [
    const Text('wert'),
    const Text('66676'),
    const Text('fdghjk'),
  ];

  //

  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    // Future.delayed(Duration.zero, _initPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: currentIndex,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.amber,
              // onTap: _navigateBottomBar,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.skateboarding),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit_rounded),
                  label: 'transfer',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc),
                  label: 'more',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

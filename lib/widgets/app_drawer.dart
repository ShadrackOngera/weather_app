import 'package:flutter/material.dart';
import 'package:weather_app/helpers/text_helper.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ListTile(
            title: TextHepler.secondaryHeaderText(
              text: 'profile',
            ),
          )
        ],
      ),
    );
  }
}

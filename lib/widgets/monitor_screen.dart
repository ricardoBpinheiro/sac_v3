import 'package:flutter/material.dart';
import 'package:sac_v3/helpers/local_navigator.dart';
import 'package:sac_v3/widgets/menu/side_menu.dart';

class MonitorScreen extends StatelessWidget {
  const MonitorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: localNavigator(),
        ),
      ],
    );
  }
}

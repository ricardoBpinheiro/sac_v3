import 'package:flutter/material.dart';
import 'package:sac_v3/helpers/responsiveness.dart';
import 'package:sac_v3/widgets/menu/side_menu.dart';
import 'package:sac_v3/widgets/mobile_screen.dart';
import 'package:sac_v3/widgets/monitor_screen.dart';
import 'package:sac_v3/widgets/top_navbar.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: MonitorScreen(),
        smallScreen: MobileScreen(),
      ),
    );
  }
}

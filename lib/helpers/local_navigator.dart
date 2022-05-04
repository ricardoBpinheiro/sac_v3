import 'package:flutter/widgets.dart';
import 'package:sac_v3/constants/controllers_instances.dart';
import 'package:sac_v3/routing/router.dart';
import 'package:sac_v3/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overviewPageRoute,

  onGenerateRoute: generateRoute,
);
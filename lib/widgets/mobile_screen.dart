import 'package:flutter/material.dart';
import 'package:sac_v3/helpers/local_navigator.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
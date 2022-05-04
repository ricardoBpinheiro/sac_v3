import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sac_v3/constants/styles.dart';
import 'package:sac_v3/controllers/menu/menu_controller.dart';
import 'package:sac_v3/controllers/menu/navigation_controller.dart';
import 'package:sac_v3/layout.dart';
import 'package:sac_v3/pages/ticket/ticket_page.dart';

void main() {
  runApp(const MyApp());
  Get.put(MenuController());
  Get.put(NavigationController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Site de Chamados - SAC v3",
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: kTextColor,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: kTestPrimaryColor,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: kDarkPrimaryColor,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: kDarkTextColor,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: kTestPrimaryColor,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      home: const Layout(),
    );
  }
}

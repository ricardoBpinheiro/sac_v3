import 'package:flutter/material.dart';
import 'package:sac_v3/constants/styles.dart';
import 'package:sac_v3/helpers/responsiveness.dart';
import 'package:sac_v3/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "icons/logo_empresa.png",
                    width: 35,
                  ),
                )
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
            child: CustomText(
              text: "Chamados",
              color: kPrimaryColorBarGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: kPrimaryColorBarGrey.withOpacity(0.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: kPrimaryColorBarGrey.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: kPrimaryColorBarActive,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: kPrimaryColorBar, width: 2),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: kPrimaryColorBarGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(
            text: "Ricardo Pinheiro",
            color: kPrimaryColorBarGrey,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: kPrimaryColorBar,
                child: Icon(Icons.person_outline, color: kPrimaryColorBarDark),
              ),
            ),
          ),
        ],
      ),
      iconTheme: const IconThemeData(color: kPrimaryColorBarDark),
      backgroundColor: kPrimaryColor,
    );

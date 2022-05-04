import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sac_v3/constants/controllers_instances.dart';
import 'package:sac_v3/constants/styles.dart';
import 'package:sac_v3/helpers/responsiveness.dart';
import 'package:sac_v3/routing/routes.dart';
import 'package:sac_v3/widgets/custom_text.dart';
import 'package:sac_v3/widgets/menu/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: kPrimaryColorBar,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "assets/icons/logo_empresa.png",
                        width: 75,
                      ),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: "Chamados",
                        size: 20,
                        weight: FontWeight.bold,
                        color: kPrimaryColorBarActive,
                      ),
                    ),
                    SizedBox(
                      width: width / 48,
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(
            height: 40,
          ),
          Divider(
            color: kPrimaryColorBarLightGrey.withOpacity(0.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName,
                    onTap: () {
                      if (itemName == logoutPageRoute) {
                        // TODO:: Enviar para o Login
                      }

                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

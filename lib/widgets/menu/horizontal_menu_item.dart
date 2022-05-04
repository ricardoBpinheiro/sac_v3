import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sac_v3/constants/controllers_instances.dart';
import 'package:sac_v3/constants/styles.dart';
import 'package:sac_v3/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        menuController.onHover(itemName);
        menuController.onHover("not hover");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? kPrimaryColorBarLightGrey.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 6,
                  height: 40,
                  color: kPrimaryColorBarDark,
                ),
              ),
              SizedBox(
                width: width / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: menuController.isHovering(itemName)
                        ? kPrimaryColorBarDark
                        : kPrimaryColorBarLightGrey,
                  ),
                )
              else
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: kPrimaryColorBarDark,
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

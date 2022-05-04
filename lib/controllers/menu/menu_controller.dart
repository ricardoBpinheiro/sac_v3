import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sac_v3/constants/styles.dart';
import 'package:sac_v3/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = ticketPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageRoute:
        return customIcon(Icons.trending_up, itemName);
      case ticketPageRoute:
        return customIcon(Icons.dashboard, itemName);
      case schedulePageRoute:
        return customIcon(Icons.calendar_month, itemName);
      case budgetPageRoute:
        return customIcon(Icons.document_scanner, itemName);
      case servicePageRoute:
        return customIcon(Icons.work, itemName);
      case invoicePageRoute:
        return customIcon(Icons.attach_money, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: kPrimaryColorBarDark,
      );
    }

    return Icon(icon,
        color: isHovering(itemName)
            ? kPrimaryColorBarDark
            : kPrimaryColorBarLightGrey);
  }
}

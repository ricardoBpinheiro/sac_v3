import 'package:flutter/material.dart';
import 'package:sac_v3/pages/budget/budget_page.dart';
import 'package:sac_v3/pages/invoice/invoice_page.dart';
import 'package:sac_v3/pages/overview/overview_page.dart';
import 'package:sac_v3/pages/schedule/schedule_page.dart';
import 'package:sac_v3/pages/ticket/service_page.dart';
import 'package:sac_v3/pages/ticket/ticket_page.dart';
import 'package:sac_v3/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
switch (settings.name) {
      case overviewPageRoute:
        return getPageRoute(OverviewPage());
      case ticketPageRoute:
        return getPageRoute(TicketPage());
      case schedulePageRoute:
        return getPageRoute(SchedulePage());
      case budgetPageRoute:
        return getPageRoute(BudgetPage());
      case servicePageRoute:
        return getPageRoute(ServicePage());
      case invoicePageRoute:
        return getPageRoute(InvoicePage());
      default:
        return getPageRoute(OverviewPage());
    }
}

PageRoute getPageRoute(Widget child){
  return MaterialPageRoute(builder: ((context) => child));
}
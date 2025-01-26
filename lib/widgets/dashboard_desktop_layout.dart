import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custome_drawer.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomeDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}

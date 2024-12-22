import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custome_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [Expanded(child: AllExpenses())],
          ),
        ),
      ],
    );
  }
}

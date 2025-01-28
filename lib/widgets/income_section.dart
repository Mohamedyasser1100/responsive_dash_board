import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custome_background_container.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
      ],
    ));
  }
}

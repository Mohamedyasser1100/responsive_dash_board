import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

class AllExpenssesHeader extends StatelessWidget {
  const AllExpenssesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'AllExpenses',
          style: AppStyle.styleRegular20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}

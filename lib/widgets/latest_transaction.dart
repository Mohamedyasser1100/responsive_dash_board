import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMeduim16,
        ),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListview(),
      ],
    );
  }
}

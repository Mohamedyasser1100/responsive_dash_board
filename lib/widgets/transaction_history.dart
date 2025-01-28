import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyle.styleRegular20,
            ),
            Text(
              'See all',
              style: AppStyle.styleMeduim16.copyWith(color: Color(0xff4EB7F2)),
            )
          ],
        )
      ],
    );
  }
}

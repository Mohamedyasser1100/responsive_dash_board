import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyle.styleRegular20,
        ),
        Text(
          'See all',
          style: AppStyle.styleMeduim16.copyWith(
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}

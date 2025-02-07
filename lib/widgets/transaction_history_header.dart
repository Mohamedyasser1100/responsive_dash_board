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
        Text(
          'Transaction History',
          style: AppStyle.styleRegular20(context),
        ),
        Text(
          'See all',
          style: AppStyle.styleMeduim16(context).copyWith(
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}

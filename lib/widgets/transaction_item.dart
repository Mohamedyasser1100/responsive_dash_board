import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyle.styleRegular16,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyle.styleSemiBols24.copyWith(
            color: transactionModel.isWithdrawal
                ? Color(0xffF3735E)
                : Color(0xff7CD87A),
          ),
        ),
      ),
    );
  }
}

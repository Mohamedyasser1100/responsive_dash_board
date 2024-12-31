import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses+item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';
import 'package:responsive_dash_board/widgets/inative_and_active_all_expensess_item.dart';

class AllExpensisItem extends StatelessWidget {
  const AllExpensisItem(
      {super.key, required this.itemModel, required this.isSelected});

  final AllExpensesitemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ActiveAllexpensessItem(itemModel: itemModel);
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses+item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensis_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static List<AllExpensesitemModel> items = [
    AllExpensesitemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesitemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesitemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensisItem(itemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensisItem(isSelected: false, itemModel: item),
            ),
          );
        } else {
          return Expanded(
              child: AllExpensisItem(isSelected: false, itemModel: item));
        }
      }).toList(),
    );
  }
}

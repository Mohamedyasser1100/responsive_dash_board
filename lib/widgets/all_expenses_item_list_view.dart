import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expenses+item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensis_item.dart';

// ignore: must_be_immutable
class AllExpensesItemListView extends StatefulWidget {
  AllExpensesItemListView({super.key});

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

  int selectedIndex = 0;
  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              upDateIndex(0);
            },
            child: AllExpensisItem(
                isSelected: widget.selectedIndex == 0,
                itemModel: AllExpensesItemListView.items[0]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              upDateIndex(1);
            },
            child: AllExpensisItem(
                isSelected: widget.selectedIndex == 1,
                itemModel: AllExpensesItemListView.items[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              upDateIndex(2);
            },
            child: AllExpensisItem(
                isSelected: widget.selectedIndex == 2,
                itemModel: AllExpensesItemListView.items[2]),
          ),
        ),
      ],
    );

    // return Row(
    //   // children: items
    //   //     .map((e) => Expanded(child: AllExpensisItem(itemModel: e)))
    //   //     .toList(),
    //   children: AllExpensesItemListView.items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           upDateIndex(index);
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //           child: AllExpensisItem(
    //               isSelected: widget.selectedIndex == index, itemModel: item),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void upDateIndex(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }
}

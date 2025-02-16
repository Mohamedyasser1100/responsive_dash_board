import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: itemDetailsModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         Text(
    //           itemDetailsModel.title,
    //           style: AppStyle.styleRegular16,
    //         ),
    //         Text(
    //           itemDetailsModel.value,
    //           style: AppStyle.styleSemiBold16,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyle.styleSemiBold16(context),
      ),
    );
  }
}

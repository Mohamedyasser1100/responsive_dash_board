import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class InActiveDraweItem extends StatelessWidget {
  const InActiveDraweItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyle.styleMeduim16,
      ),
    );
  }
}

class ActiveDraweItem extends StatelessWidget {
  const ActiveDraweItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyle.styleBols16,
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}

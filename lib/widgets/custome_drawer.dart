import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawe_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  img: Assets.imagesAvatar1,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDraweItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSettings)),
                InActiveDraweItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

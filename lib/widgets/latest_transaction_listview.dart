import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});

  static List items = [
    UserInfoModel(
        img: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        img: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        img: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );

    //   return SizedBox(
    //     height: 80,
    //     child: ListView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: items.length,
    //         itemBuilder: (context, index) {
    //           return IntrinsicWidth(
    //               child: UserInfoListTile(userInfoModel: items[index]));
    //         }),
    //   );
  }
}

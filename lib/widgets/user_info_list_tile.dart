import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.img),
          title: Text(
            userInfoModel.title,
            style: AppStyle.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyle.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}

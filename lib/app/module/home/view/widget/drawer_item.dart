import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:srmm/app/widget/text/big_text.dart';

import '../../../../utils/app_color.dart';

class DrawerItem extends StatelessWidget {

  final VoidCallback onPress;
  final String title;
  final IconData icon;

  const DrawerItem({super.key, required this.onPress, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      title: BigText(text: title),
      trailing: Container(
        height: 20.h,
        width: 20.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.whiteText,
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 10.sp,
        ),
      ),
      leading: Container(
        height: 35.h,
        width: 35.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.card3,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

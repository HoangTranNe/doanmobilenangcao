
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:main_project/conf/constants.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var profileInfo = Expanded(
      child: Column(
        children: [
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: const AssetImage('assets/images/avatar.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      LineAwesomeIcons.pen,
                      color: kDarkPrimaryColor,
                      size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text('Trần Bảo Hoàng', style: kTitleTextStyle),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text('tranbaohoang70@gmail.com', style: kCaptionTextStyle),
          SizedBox(height: kSpacingUnit.w * 2),
          Container(
            height: kSpacingUnit.w * 4,
            width: kSpacingUnit.w * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Center(
              child: Text('Edit Profile', style: kButtonTextStyle),
            ),
          )
        ],
      ),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: kSpacingUnit.w * 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: kSpacingUnit.w * 0.5),
              Icon(
                LineAwesomeIcons.arrow_left,
                size: ScreenUtil().setSp(kSpacingUnit.w * 2.5),
              ),
              profileInfo,
              Icon(
                LineAwesomeIcons.sun,
                size: ScreenUtil().setSp(kSpacingUnit.w * 2.5),
              ),
            ],
          )
        ],
      ),
    );
  }
}

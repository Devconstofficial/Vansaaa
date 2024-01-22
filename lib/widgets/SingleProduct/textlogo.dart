import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TextLogo extends StatefulWidget {
  const TextLogo({super.key});

  @override
  State<TextLogo> createState() => _TextLogoState();
}

class _TextLogoState extends State<TextLogo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 7.h),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: SvgPicture.asset('assets/images/Location.svg'),
            ),
            Text('St. Vincent and the Grenadines',
                style: TextStyle(
                    fontSize: 12.827587127685547.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(110, 110, 110, 1)))
          ]),
        ),
        Row(children: [
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SvgPicture.asset('assets/images/Clock.svg'),
          ),
          Text('Posted 2 hours ago',
              style: TextStyle(
                  fontSize: 12.827587127685547.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(110, 110, 110, 1)))
        ]),
      ],
    );
  }
}

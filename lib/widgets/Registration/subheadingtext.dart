import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubHeadingText extends StatelessWidget {
  final String text;
  const SubHeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            EdgeInsets.only(top: 15.h, bottom: 30.h, left: 20.w, right: 20.w),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color.fromRGBO(103, 114, 148, 1),
              fontSize: 14.sp,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}

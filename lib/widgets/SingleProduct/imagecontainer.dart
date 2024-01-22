import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 25.w, top: 38.h),
      child: Stack(children: [
        Container(
          width: 324.w,
          height: 280.h,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1615874694520-474822394e73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(21.37931251525879.r),
          ),
        ),
        Container(
            width: 324.w,
            height: 280.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.37931251525879.r),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0x99000000)],
                ))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18.9.w, top: 18.38.h),
              child: CircleAvatar(
                backgroundColor: const Color.fromRGBO(254, 110, 0, 1),
                child: SvgPicture.asset('assets/images/Back.svg'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h, right: 8.48.w),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromRGBO(254, 110, 0, 1),
                    child: SvgPicture.asset('assets/images/Share.svg'),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 17.48.w, top: 16.h, left: 3.8),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromRGBO(254, 110, 0, 1),
                    child: SvgPicture.asset('assets/images/Heart.svg'),
                  ),
                ),
              ],
            )
          ],
        ),
        Positioned(
          bottom: 24.h,
          left: 198.w,
          top: 230.h,
          child: Container(
            width: 92.w,
            height: 35.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: const Color(0x42ffffff)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 19.w, right: 14.w, top: 7.h, bottom: 3.h),
              child: Text('Featured',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
          ),
        ),
      ]),
    );
  }
}

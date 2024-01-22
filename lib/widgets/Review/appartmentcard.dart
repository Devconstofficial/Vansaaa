import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppartmentCard extends StatelessWidget {
  const AppartmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 33.h),
      child: Container(
        width: 327.w,
        height: 120.h,
        decoration: ShapeDecoration(
            color: const Color(0xFFF5F4F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            )),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.h, left: 8.w, bottom: 8.h),
              child: SizedBox(
                width: 168.w,
                height: 104.h,
                child: Stack(children: [
                  Container(
                    width: 168.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1615874694520-474822394e73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(21.37931251525879.r),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, top: 8.h),
                    child: SizedBox(
                      width: 25.w,
                      height: 25.h,
                      child: CircleAvatar(
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: SvgPicture.asset(
                          'assets/images/Heart3.svg',
                          width: 11.w,
                          height: 11.1.h,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 69.h,
                    left: 8.w,
                    child: Container(
                      width: 63.w,
                      height: 27.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: const Color.fromRGBO(35, 79, 104, 1)),
                      child: Center(
                        child: Text(
                          'Apartment',
                          style: TextStyle(
                            color: const Color(0xFFF5F4F7),
                            fontSize: 8.sp,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 16.w),
                      child: Text(
                        'Sky Dandelions\nApartment',
                        style: TextStyle(
                          color: const Color(0xFF242B5C),
                          fontSize: 12.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Star.svg',
                        width: 9.w,
                        height: 9.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text(
                          '4.9',
                          style: TextStyle(
                            color: const Color(0xFF53577A),
                            fontSize: 8.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.5.h),
                  child: Row(children: [
                    SvgPicture.asset(
                      'assets/images/Location2.svg',
                      width: 6.w,
                      height: 7.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: Text(
                        'Jakarta, Indonesia',
                        style: TextStyle(
                          color: const Color(0xFF53577A),
                          fontSize: 8.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

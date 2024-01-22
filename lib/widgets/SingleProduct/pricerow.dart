import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text('Price',
                    style: TextStyle(
                        fontSize: 12.827587127685547.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(133, 133, 133, 1))),
              ),
              Row(
                children: [
                  Text('\$ 400',
                      style: TextStyle(
                          fontSize: 17.10.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(133, 133, 133, 1),
                          decoration: TextDecoration.lineThrough)),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('\$ 350',
                      style: TextStyle(
                        fontSize: 17.10.sp,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(254, 110, 0, 1),
                      ))
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 80.w, top: 15.h),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Garry Allen',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Seller',
                      style: TextStyle(
                        color: const Color(0xFF848484),
                        fontSize: 11.sp,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Text(
                            '4.5',
                            style: TextStyle(
                              color: const Color(0xFF848484),
                              fontSize: 11.sp,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SvgPicture.asset('assets/images/Star.svg')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewCard extends StatelessWidget {
  final bool imagePresent;
  const ReviewCard({super.key, required this.imagePresent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: 327.w,
        padding: EdgeInsets.all(10.sp),
        decoration: ShapeDecoration(
          color: const Color(0xFFF5F4F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Column(children: [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              backgroundImage: AssetImage('assets/images/Avatar.png'),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 141.w,
                      child: Text(
                        'Samuel Ella',
                        style: TextStyle(
                          color: const Color(0xFF242B5C),
                          fontSize: 12.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                    RatingBar.builder(
                      itemSize: 20.sp,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Row(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua. ',
                        style: TextStyle(
                          color: const Color(0xFF53577A),
                          fontSize: 10.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30,
                          height: 1.5.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: imagePresent,
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                width: 60.w,
                                height: 60.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/House.png"),
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: 60.w,
                                height: 60.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/House.png"),
                                  ),
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: 60.w,
                                height: 60.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/House.png"),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Row(
                    children: [
                      Text(
                        '10 mins ago',
                        style: TextStyle(
                          color: const Color(0xFFA1A4C1),
                          fontSize: 8.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.16,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

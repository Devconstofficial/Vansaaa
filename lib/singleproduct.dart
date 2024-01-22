import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app2/review.dart';
import 'package:new_app2/widgets/SingleProduct/boldtext.dart';
import 'package:new_app2/widgets/SingleProduct/button.dart';
import 'package:new_app2/widgets/SingleProduct/imagecontainer.dart';
import 'package:new_app2/widgets/SingleProduct/pricerow.dart';
import 'package:new_app2/widgets/SingleProduct/textlogo.dart';
import 'package:readmore/readmore.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ImageContainer(),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 19.h, bottom: 9.h),
                            child: Text('Dreamsville House',
                                style: TextStyle(
                                  fontSize: 21.37931251525879.sp,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          const TextLogo(),
                          BoldText(
                            text: 'Condition:',
                            text2: ' New',
                            paddingTop: 14.h,
                            paddingBottom: 9.h,
                          ),
                          BoldText(
                            text: 'Category:',
                            text2: ' House for sale',
                            paddingBottom: 8.h,
                          ),
                          const BoldText(
                            text: 'Facilities:',
                            text2: ' 3 Bathrooms,3 Bedrooms,Car Pourch',
                          ),
                          const PriceRow(),
                          Padding(
                            padding: EdgeInsets.only(top: 18.h, bottom: 12.h),
                            child: Text(
                              'Description',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 105, 82, 82),
                                fontSize: 17.10.sp,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 14.w),
                            child: const ReadMoreText(
                              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. sahdjfh asdhfds dhhv sdhsd asdh csdfgd csadhfgv',
                              style: TextStyle(
                                color: Color.fromRGBO(133, 133, 133, 1),
                                fontSize: 12.83,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                              ),
                              trimLines: 2,
                              colorClickableText: Colors.blue,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              lessStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 24.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DoubleButton(
                                    text: 'Ask',
                                    color: const Color.fromRGBO(0, 150, 255, 1),
                                    onPress: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Review()),
                                      );
                                    }),
                                DoubleButton(
                                  text: 'Make an Offer',
                                  color: const Color.fromRGBO(254, 110, 0, 1),
                                  onPress: () {},
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

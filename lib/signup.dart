import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_app2/login.dart';
import 'package:new_app2/widgets/Registration/actionbutton.dart';
import 'package:new_app2/widgets/Registration/containerbutton.dart';
import 'package:new_app2/widgets/Registration/headingtext.dart';
import 'package:new_app2/widgets/Registration/input_field.dart';
import 'package:new_app2/widgets/Registration/passwordfield.dart';
import 'package:new_app2/widgets/Registration/plaintext.dart';
import 'package:new_app2/widgets/Registration/subheadingtext.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 35.h,
            ),
            child: Column(
              children: [
                const HeadingText(text: 'Start buying and selling'),
                const SubHeadingText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus.'),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContainerButton(onPressGoogle: () {
                        print('google');
                      }, onPressFacebook: () {
                        print('Facebook');
                      }),
                      const InputField(label: 'Name'),
                      const InputField(label: 'Email'),
                      const PasswordField(),
                      const InputField(label: 'Phone Number'),
                      const InputField(label: 'Select Island'),
                      const InputField(label: 'Profile Picture'),
                    ],
                  ),
                ),
                ActionButton(
                    text: 'Signup',
                    paddingTop: 20.h,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    }),
                PlainText(
                  text: "Don't have an account?Join us",
                  paddingTop: 15.h,
                  paddingBottom: 10.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

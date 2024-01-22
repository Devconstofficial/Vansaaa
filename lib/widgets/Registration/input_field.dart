import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatefulWidget {
  final String label;
  const InputField({super.key, required this.label});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(103, 114, 148, 1)),
                borderRadius: BorderRadius.circular(4.r),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
              ),
              hintText: widget.label,
              hintStyle:
                  const TextStyle(color: Color.fromRGBO(103, 114, 148, 1)),
            ),
          ),
        ],
      ),
    );
  }
}

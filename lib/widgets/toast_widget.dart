import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rimo/constants/color_constant.dart';

successToast(String? message, context) async {
  return Flushbar(
    title: "Success",
    titleColor: primaryColor,
    titleSize: 12.sp,
    message: message,
    messageColor: blackTextColor,
    messageSize: 13.sp,
    backgroundColor: whiteColor,
    borderRadius: BorderRadius.circular(15.sp),
    flushbarPosition: FlushbarPosition.TOP,
    leftBarIndicatorColor: primaryColor,
    duration: const Duration(seconds: 4),
    icon: const Icon(Icons.info_outline, color: primaryColor),
  )..show(context);
}

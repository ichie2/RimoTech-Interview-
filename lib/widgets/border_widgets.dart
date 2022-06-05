import 'package:rimo/core/exports.dart';

OutlineInputBorder focusBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.sp),
    borderSide: BorderSide(
      color: primaryColor,
      width: 1.5.w,
    ),
  );
}

OutlineInputBorder primaryBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.sp),
    borderSide: BorderSide(
      color: primaryColor,
      width: 1.5.w,
    ),
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.sp),
    borderSide: BorderSide(
      color: Colors.red,
      width: 1.5.w,
    ),
  );
}

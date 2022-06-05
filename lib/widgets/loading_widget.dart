import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rimo/core/exports.dart';

showLoading(context) {
  final theme = Theme.of(context);
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.sp),
        ),
        content: SizedBox(
          height: 200.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SpinKitSpinningLines(color: primaryColor),
              SizedBox(height: 10.h),
              Text(
                "Hang On",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: blackTextColor,
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

dismissLoading(context) {
  return Navigator.pop(context);
}

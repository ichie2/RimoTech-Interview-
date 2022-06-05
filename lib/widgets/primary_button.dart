import 'package:rimo/core/exports.dart';

class SmallButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const SmallButton({
    Key? key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15.sp),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 15.h),
            child: Center(
              child: Text(
                text!,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const SecondaryButton({
    Key? key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(color: primaryColor, width: 1.w),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15.sp),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 15.h),
            child: Center(
              child: Text(
                text!,
                style: TextStyle(
                  color: blackTextColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const PrimaryButton({
    Key? key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(15.sp),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 15.h),
            child: Center(
              child: Text(
                text!,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

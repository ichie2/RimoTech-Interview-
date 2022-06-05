import 'package:flutter_svg/flutter_svg.dart';
import 'package:rimo/core/exports.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      color: dividerColor,
      width: 105.w,
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String? icon;
  final VoidCallback? onPressed;

  const SocialIcon({
    Key? key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50.sp),
        child: Padding(
          padding: EdgeInsets.all(1.w),
          child: Image.asset(
            icon!,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}

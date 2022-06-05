import 'package:rimo/core/exports.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: isTrue ? greenColor : redColor,
      ),
      duration: const Duration(milliseconds: 300),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              isTrue = !isTrue;
            });
          },
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Text(
              isTrue ? "Go Online" : "Go Offline",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: isTrue
                      ? const Color(0xff145B14)
                      : const Color(0xffD03535)),
            ),
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color? color;
  final Color? textColor;

  const ActionButton({
    Key? key,
    this.onPressed,
    this.text,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: color,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10.sp),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 37.w, vertical: 15.h),
            child: Text(
              text!,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

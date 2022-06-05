import 'package:rimo/constants/string_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/widgets/border_widgets.dart';

class CountryField extends StatelessWidget {
  final TextEditingController? controller;

  const CountryField({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.phone,
          controller: controller,
          style: TextStyle(
            fontSize: 15.5.sp,
            color: blackColor,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: theme.backgroundColor,
            focusedBorder: focusBorder(),
            errorBorder: errorBorder(),
            border: primaryBorder(),
            enabledBorder: primaryBorder(),
            focusedErrorBorder: focusBorder(),
            contentPadding: EdgeInsets.only(left: 18.w),
            hintText: "Country Code",
            hintStyle: TextStyle(
              fontSize: 15.5.sp,
              color: blackTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          validator: (dynamic v) {
            if (v.isNotEmpty) {
              return null;
            }
            return "Enter Country Code";
          },
        ),
      ),
    );
  }
}

class AuthPhoneField extends StatelessWidget {
  final TextEditingController? controller;

  const AuthPhoneField({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.phone,
          controller: controller,
          style: TextStyle(
            fontSize: 15.5.sp,
            color: blackColor,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: theme.backgroundColor,
            focusedBorder: focusBorder(),
            errorBorder: errorBorder(),
            border: primaryBorder(),
            enabledBorder: primaryBorder(),
            focusedErrorBorder: focusBorder(),
            contentPadding: EdgeInsets.only(left: 18.w),
            hintText: "Phone Number",
            hintStyle: TextStyle(
              fontSize: 15.sp,
              color: greyTextColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          validator: (dynamic v) {
            if (phoneRegex.hasMatch(v) || secondPhoneRegex.hasMatch(v)) {
              return null;
            }
            return "Enter Phone Number";
          },
        ),
      ),
    );
  }
}

class AuthField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final RegExp? regExp;
  final String? errText;
  final TextInputType? keyboardType;

  const AuthField({
    Key? key,
    this.controller,
    this.hintText,
    this.regExp,
    this.errText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 355.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Center(
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          style: TextStyle(
            fontSize: 15.5.sp,
            color: blackColor,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: theme.backgroundColor,
            focusedBorder: focusBorder(),
            errorBorder: errorBorder(),
            border: primaryBorder(),
            enabledBorder: primaryBorder(),
            focusedErrorBorder: focusBorder(),
            contentPadding: EdgeInsets.only(left: 18.w),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 15.sp,
              color: greyTextColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          validator: (dynamic v) {
            if (regExp?.hasMatch(v) == true || v.isNotEmpty) {
              return null;
            }
            return "$errText";
          },
        ),
      ),
    );
  }
}

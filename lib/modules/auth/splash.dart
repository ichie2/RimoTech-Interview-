import 'package:rimo/constants/image_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/widgets/primary_button.dart';
import 'package:rimo/widgets/splash_widgets.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            Text(
              "SAFE AND FAST \nDELIVERY APP",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50.h),
            Image.asset(
              ConstanceData.splash,
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Live Tracking    Easy Payment    In-app Messaging",
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 78.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: PrimaryButton(
                text: "Existing User",
                onPressed: () {
                  // login
                  Navigator.pushNamed(context, RouteGenerator.login);
                },
              ),
            ),
            SizedBox(height: 27.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SecondaryButton(
                text: "New User",
                onPressed: () {
                  // signup
                  Navigator.pushNamed(context, RouteGenerator.signup);
                },
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomDivider(),
                  Text(
                    "Or sign up with",
                    style: TextStyle(
                      color: blackTextColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const CustomDivider(),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: ConstanceData.facebook,
                  onPressed: () {
                    // facebook
                  },
                ),
                SizedBox(width: 39.w),
                SocialIcon(
                  icon: ConstanceData.google,
                  onPressed: () {
                    // facebook
                  },
                ),
                SizedBox(width: 39.w),
                SocialIcon(
                  icon: ConstanceData.apple,
                  onPressed: () {
                    // facebook
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

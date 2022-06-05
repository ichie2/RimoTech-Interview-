import 'package:rimo/constants/image_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/widgets/primary_button.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(ConstanceData.background),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 62.h),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Text(
                    "Handova For:",
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(
                          text: "Personal Use",
                          onPressed: () {
                            // personal
                            Navigator.pushNamed(
                                context, RouteGenerator.personal);
                          },
                        ),
                        SmallButton(
                          text: "  Business  ",
                          onPressed: () {
                            // business
                            Navigator.pushNamed(
                                context, RouteGenerator.business);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 106.h),
                  Center(
                    child: Text(
                      "By creating an account, you are accepting our Terms\nand Conditions and Privacy Policy to use Handova\ndelivery services.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

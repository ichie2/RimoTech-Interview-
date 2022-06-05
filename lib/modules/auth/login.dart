import 'package:rimo/constants/image_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/core/route.dart';
import 'package:rimo/data/provider/app_provider.dart';
import 'package:rimo/widgets/clickable_text.dart';
import 'package:rimo/widgets/field_widgets.dart';
import 'package:rimo/widgets/primary_button.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Login extends ConsumerStatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  ///
  final TextEditingController _codeController =
      TextEditingController(text: "NG (+234)");
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final con = ref.watch(loginProvider.notifier);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 63.h),
                Text(
                  "Enter Phone Number",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Login with your registered phone\nnumber.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 46.h),
                Row(
                  children: [
                    CountryField(
                      controller: _codeController,
                    ),
                    SizedBox(width: 10.w),
                    AuthPhoneField(
                      controller: _phoneController,
                    )
                  ],
                ),
                SizedBox(height: 27.h),
                AuthField(
                  controller: _passwordController,
                  hintText: "Enter Password",
                  regExp: RegExp(""),
                  errText: "Password is required",
                ),
                SizedBox(height: 53.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: PrimaryButton(
                    text: "LOG IN",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        con.login(_phoneController.text,
                            _passwordController.text, context);
                      }
                    },
                  ),
                ),
                SizedBox(height: 48.h),
                Center(
                  child: PrimaryTextButton(
                    text: "Forgot Password?",
                    textStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                    onPressed: () {
                      // forgot password
                      Navigator.pushNamed(context, RouteGenerator.recover);
                    },
                  ),
                ),
                SizedBox(height: 60.h),
                Center(
                  child: WebsafeSvg.asset(
                    ConstanceData.finger,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _codeController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
  }
}

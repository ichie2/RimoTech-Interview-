import 'package:rimo/constants/string_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/widgets/field_widgets.dart';
import 'package:rimo/widgets/primary_button.dart';

class Recover extends StatefulWidget {
  const Recover({Key? key}) : super(key: key);

  @override
  State<Recover> createState() => _RecoverState();
}

class _RecoverState extends State<Recover> {
  ///
  final TextEditingController _emailController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Enter your registered email address\nto recover your password.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 46.h),
                AuthField(
                  controller: _emailController,
                  hintText: "Email Address",
                  regExp: emailRegex,
                  errText: "Provide a valid email address",
                ),
                SizedBox(height: 53.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: PrimaryButton(
                    text: "RESET PASSWORD",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // recover
                      }
                    },
                  ),
                ),
                SizedBox(height: 48.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

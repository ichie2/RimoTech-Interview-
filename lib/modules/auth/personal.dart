import 'package:rimo/constants/string_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/widgets/field_widgets.dart';
import 'package:rimo/widgets/primary_button.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController =
      TextEditingController(text: "NG (+234)");
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                SizedBox(height: 20.h),
                Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Enter your details to create an\naccount.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 36.h),
                AuthField(
                  controller: _nameController,
                  hintText: "Full Name",
                  regExp: nameRegex,
                  errText: "Username is required",
                ),
                SizedBox(height: 20.h),
                AuthField(
                  controller: _emailController,
                  hintText: "Email Address",
                  regExp: emailRegex,
                  errText: "Email is required",
                ),
                SizedBox(height: 20.h),
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
                SizedBox(height: 20.h),
                AuthField(
                  controller: _passwordController,
                  hintText: "Create Password",
                  regExp: passwordRegex,
                  errText: "Password is required",
                ),
                SizedBox(height: 27.h),
                AuthField(
                  controller: _passwordController,
                  hintText: "Create Password",
                  regExp: passwordRegex,
                  errText: "Password is required",
                ),
                SizedBox(height: 53.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: PrimaryButton(
                    text: "CREATE ACCOUNT",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // login
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

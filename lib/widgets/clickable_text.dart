import 'package:rimo/core/exports.dart';

class PrimaryTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;

  const PrimaryTextButton({
    Key? key,
    this.text,
    this.onPressed,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: textStyle,
        primary: textStyle!.color,
      ),
      onPressed: onPressed,
      child: Text(text!),
    );
  }
}

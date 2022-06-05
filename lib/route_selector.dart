import 'package:rimo/constants/string_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/modules/auth/splash.dart';
import 'modules/auth/login.dart';

class RouteSelector extends StatelessWidget {
  const RouteSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<String>(userToken).listenable(),
      builder: (_, Box box, __) {
        final token = box.get(userTokenKey);
        if (token == null) {
          return const Splash();
        } else {
          return const Login();
        }
      },
    );
  }
}

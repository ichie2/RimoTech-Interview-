import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:rimo/constants/string_constant.dart';
import 'package:rimo/core/exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await path.getApplicationDocumentsDirectory();
  await Hive.initFlutter(directory.path);
  await Hive.openBox<String>(userToken);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Rimo',
          color: primaryColor,
          theme: CustomTheme.getTheme(),
          onGenerateRoute: RouteGenerator.generateRoute,
          home: const RouteSelector(),
        );
      },
    );
  }
}

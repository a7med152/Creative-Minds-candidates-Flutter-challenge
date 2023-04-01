// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import '../components/dev_task_screen/ui/dev_task_screen.dart';
import '../components/home_screen/ui/home_screen.dart';
import '../components/select_lang_and_theme/ui/select_lang_and_theme_screen.dart';
import '../components/splash/splash_screen.dart';
import 'AppNotifier.dart';
import 'AppTheme.dart';

final AppNotifier appNotifier = AppNotifier();
// late FToast fToast;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String, WidgetBuilder> routes = {
    ////////////////////////// auth
    '/': (_) => const SplashScreen(),
    '/home': (context) => const HomeScreen(),
    '/select_lang_and_theme': (context) => const SelectLangAndTheme(),
    '/dev_task_screen': (context) => const DevTaskScreen(),
  };


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var easyLocal = EasyLocalization.of(context);
    return ChangeNotifierProvider(
      create: (context) => appNotifier,
      child: Consumer<AppNotifier>(
        builder: (BuildContext context,AppNotifier  model, Widget?  child){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Creative Minds candidates Flutter challenge",
            navigatorKey: model.navigatorKey,
            onGenerateTitle: (context) => "Creative Minds candidates Flutter challenge",
            localizationsDelegates: [
              easyLocal!.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
            ],
            supportedLocales: easyLocal.supportedLocales,
            locale: easyLocal.locale,
            themeMode: model.themeMode(),
            darkTheme: AppTheme.darkTheme,
            theme: AppTheme.lightTheme,
            initialRoute:  '/',
            routes: routes,
          );
        },
      ),
    );
  }
}
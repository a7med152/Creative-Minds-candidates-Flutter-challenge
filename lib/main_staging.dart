import 'package:creative_minds_flutter_challenge/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:creative_minds_flutter_challenge/bloc/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:provider/provider.dart';
import 'app/AppNotifier.dart';
import 'app/app.dart';
// ignore: depend_on_referenced_packages


void main() async {
  // flutter build apk --flavor staging -t lib/main_staging.dart
  FlavorConfig(
    name: "STAGING",
    variables: {
      "baseUrl": "https://api.github.com",
    },
  );
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final AuthenticationBloc authenticationBloc = AuthenticationBloc();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'DZ')
      ],
      startLocale: arabic,
      path: 'assets/language',
      child: BlocProvider<AuthenticationBloc>(
        create: (context) =>  authenticationBloc,
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<AppNotifier>(
              create: (context) => AppNotifier(),
            ),
          ],
          child: const MyApp(),
        ),
      ),
    ),
  );
}




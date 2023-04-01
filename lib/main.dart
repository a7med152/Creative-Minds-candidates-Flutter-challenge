import 'package:easy_localization/easy_localization.dart';
import 'package:creative_minds_flutter_challenge/bloc/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'app/AppNotifier.dart';
import 'app/app.dart';

import 'utils/constants.dart';


void main() async {
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




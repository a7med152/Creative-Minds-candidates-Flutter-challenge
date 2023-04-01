import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user.dart';
import '../../resources/repository.dart';
import '../../utils/custom_exception.dart';
import 'bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(Uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      Repository.preferences = await SharedPreferences.getInstance();
      bool isOpen = Repository.preferences?.getBool('firstOpen') ?? false;
      if (!isOpen) {
        await Repository.preferences?.setBool('firstOpen', true);
        yield FirstOpenApp();
      } else {
        yield* _mapAppStartedToState();
      }
    } else if (event is LoggedIn) {
      yield* _mapAppStartedToState();
    } else if (event is LoggedInAgain) {
      // await Repository().login(
      //   loginRequest: LoginRequest(
      //     email: Repository.user!.email!,
      //     userPassword: Repository.user!.userPassword ?? '',
      //   ),
      // );
      yield* _mapAppStartedToState();
    } else if (event is LoggedOut) {
      yield* _mapLoggedOutToState((state as Authenticated).userInfo.token!);
    } else if (event is UnauthenticatedEvent) {
      yield Unauthenticated();
    }
    // await Jiffy.locale(tr('language_code'));
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    User? user;
    try {
      // user = await Repository().getLoginUser();
      if (user != null) {
        // await Repository().updateFireBaseToken(token: Repository.firebaseToken ?? "no-token");
        // user = User.fromJson(await Repository().getUser());
        yield Authenticated(userInfo: user);
      } else {
        yield Unauthenticated();
      }
    } on MyException {
      yield Unauthenticated();
    } catch (_) {
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedOutToState(String token) async* {
    try {
      // await Repository().logout(token: Repository.firebaseToken ?? "no-token");
      // await Repository().logoutOfLine();
      yield Unauthenticated();
    } catch (e) {
      yield Unauthenticated();
    }
  }

}

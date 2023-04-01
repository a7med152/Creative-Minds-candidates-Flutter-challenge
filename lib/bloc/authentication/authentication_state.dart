

import '../../model/user.dart';


abstract class AuthenticationState {
  AuthenticationState([List props = const []]) : super();
}

class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'Uninitialized';
}

class FirstOpenApp extends AuthenticationState {
  @override
  String toString() => 'FirstOpenApp';
}

class Authenticated extends AuthenticationState {
  final User userInfo;
  Authenticated({
    required this.userInfo,
  }) : super([ userInfo.token]);

//  // TODO: implement props
  List<Object> get props => [userInfo.token!];
}

class Unauthenticated extends AuthenticationState {
  Unauthenticated();
}
class NoInternetConnection extends AuthenticationState {
  NoInternetConnection();
}

class ForceUpdate extends AuthenticationState {
  ForceUpdate();
}


import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent([List props = const []]) : super();
}

class AppStarted extends AuthenticationEvent {
  const AppStarted();
  @override
  String toString() => 'AppStarted';
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class UnauthenticatedEvent extends AuthenticationEvent {
  const UnauthenticatedEvent();
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class LoggedIn extends AuthenticationEvent {
  const LoggedIn() : super();
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class LoggedInAgain extends AuthenticationEvent {
  const LoggedInAgain() : super();
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class LoggedOut extends AuthenticationEvent {
  const LoggedOut();
  @override
  List<Object> get props => [];
}

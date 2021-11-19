// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/notes/note.dart' as _i8;
import '../home/home_page.dart' as _i3;
import '../notes/note_form/note_form_page.dart' as _i5;
import '../notes/notes_overview/notes_overview_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    },
    NotesOverviewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotesOverviewPage());
    },
    NoteFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormPageRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.NoteFormPage(key: args.key, note: args.note),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(NotesOverviewPageRoute.name,
            path: '/notes-overview-page'),
        _i6.RouteConfig(NoteFormPageRoute.name, path: '/note-form-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i4.NotesOverviewPage]
class NotesOverviewPageRoute extends _i6.PageRouteInfo<void> {
  const NotesOverviewPageRoute() : super(name, path: '/notes-overview-page');

  static const String name = 'NotesOverviewPageRoute';
}

/// generated route for [_i5.NoteFormPage]
class NoteFormPageRoute extends _i6.PageRouteInfo<NoteFormPageRouteArgs> {
  NoteFormPageRoute({_i7.Key? key, required _i8.Note? note})
      : super(name,
            path: '/note-form-page',
            args: NoteFormPageRouteArgs(key: key, note: note));

  static const String name = 'NoteFormPageRoute';
}

class NoteFormPageRouteArgs {
  const NoteFormPageRouteArgs({this.key, required this.note});

  final _i7.Key? key;

  final _i8.Note? note;

  @override
  String toString() {
    return 'NoteFormPageRouteArgs{key: $key, note: $note}';
  }
}

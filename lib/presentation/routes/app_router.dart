import 'package:auth_app/presentation/home/home_page.dart';
import 'package:auth_app/presentation/initial/initial_page.dart';
import 'package:auth_app/presentation/sign_in/sign_in_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: InitialPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {
  InitialPage? initialPage;
  SignInPage? signInPage;
  HomePage? homePage;
}

// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs
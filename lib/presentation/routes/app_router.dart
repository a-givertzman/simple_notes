import 'package:auth_app/presentation/home/home_page.dart';
import 'package:auth_app/presentation/notes/note_form/note_form_page.dart';
import 'package:auth_app/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:auth_app/presentation/sign_in/sign_in_page.dart';
import 'package:auth_app/presentation/splash/splash_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: NotesOverviewPage),
    AutoRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {
  SplashPage? splashPage;
  SignInPage? signInPage;
  HomePage? homePage;
  NotesOverviewPage? notesOverviewPage;
  NoteFormPage? noteFormPage;
}
// 
// run builder
// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter pub run build_runner build --delete-conflicting-outputs

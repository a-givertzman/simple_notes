
import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:auth_app/injection.dart';
import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => 
            getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ], 
      child: MaterialApp.router(
        title: 'Flutter Auth App',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: theme.copyWith(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.blueGrey,
          ),
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.blueGrey[800],
            secondary: Colors.indigo,
          ),
          // primaryColor: 
          // accentColor: 
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          // textTheme: const TextTheme(
          // ),
        ),
      ),
    );
  }
}

// ho to implement platform specific ui
// https://medium.com/flutter/do-flutter-apps-dream-of-platform-aware-widgets-7d7ed7b4624d


import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:auth_app/injection.dart';
import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:auth_app/presentation/sign_in/sign_in_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/annotations.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.checkSignedIn()),
        ),
      ], 
      child: MaterialApp.router(
        title: 'Flutter Auth App',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blueGrey[800],
          accentColor: Colors.indigo,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
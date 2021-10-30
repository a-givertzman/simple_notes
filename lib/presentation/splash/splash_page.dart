import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  // const InitialPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            dPrint.log("[SplashPage.initial]");
          }, 
          authenticated: (_) {
            dPrint.log("[SplashPage.Autonticated]");
            // context.router.push(const HomePageRoute());
            AutoRouter.of(context).push(const NotesOverviewPageRoute());
          }, 
          unauthenticated: (_) {
            dPrint.log("[SplashPage.Unautonticated]");
            context.router.push(const SignInPageRoute());
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

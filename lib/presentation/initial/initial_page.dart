import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatelessWidget {
  // const InitialPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            // debugger(message: "Initial Page: initial");
          }, 
          signed: (_) {
            // debugger(message: "Initial Page: Autonticated");
            AutoRouter.of(context).push(const HomePageRoute());
          }, 
          unSigned: (_) {
            // debugger(message: "Initial Page: Un autonticated");
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
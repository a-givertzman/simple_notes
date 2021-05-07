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
            print("Initial Page: initial");
          }, 
          signed: (_) {
            print("Initial Page: Autonticated");
            AutoRouter.of(context).push(HomePageRoute());
          }, 
          unSigned: (_) {
            print("Initial Page: Un autonticated");
            context.router.push(SignInPageRoute());
          },
        );
      },
    );
  }
}
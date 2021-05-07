import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:auth_app/presentation/sign_in/sign_in_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "You Home Page",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 40),
    );
  }
}
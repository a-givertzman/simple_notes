import 'package:auth_app/application/user_profile/user_profile_bloc.dart';
import 'package:auth_app/injection.dart';
import 'package:auth_app/presentation/home/widgets/home_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You Home Page'),
        automaticallyImplyLeading: false,
      ),
      body: BlocProvider(
        create: (context) => getIt<UserProfileBloc>(),
        child: HomeForm(),
      ),
    );
  }
}

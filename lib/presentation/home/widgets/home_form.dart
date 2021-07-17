import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:auth_app/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:auth_app/application/user_profile/user_profile_bloc.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeForm extends StatelessWidget {
  // const SignInForm({Key key}) : super(key: key);
  static const double paddingValue = 8.0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserProfileBloc, UserProfileState>(
      listener: (context, state) => {
        state.applyFailureOrSuccessOption.fold(
          () {},   // if Option is none()
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.props[0].toString(),
              ).show(context);
            }, 
            (r) {},
          ),
        ),
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: ListView(
            padding: const EdgeInsets.all(paddingValue),
            children: [
              const SizedBox(height: paddingValue),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Display name',
                ),
                autocorrect: false,
                onChanged: (value) => context
                  .read<UserProfileBloc>()
                  .add(UserProfileEvent.nameChanged(value)),
                validator: (value) => context
                  .read<UserProfileBloc>().state.userName.value.fold(
                    (l) {
                      return l is Failure ? l.props[0].toString() : null;  // Invalid Email
                    }, 
                    (r) => null,
                  ),
              ),
              const SizedBox(height: paddingValue),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                  .read<UserProfileBloc>()
                  .add(UserProfileEvent.emailChanged(value)),
                validator: (value) => context
                  .read<UserProfileBloc>().state.emailAddress.value.fold(
                    (l) {
                      return l is Failure ? l.props[0].toString() : null;  // Invalid Email
                    }, 
                    (r) => null,
                  ),
              ),
              const SizedBox(height: paddingValue),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  errorStyle: TextStyle(
                    height: 1.1,
                  ),
                  errorMaxLines: 5,
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                  .read<UserProfileBloc>()
                  .add(UserProfileEvent.passwordChanged(value)),
                validator: (value) => context
                  .read<UserProfileBloc>().state.password.value.fold(
                    (l) {
                      return l is Failure ? l.props[0].toString() : null; // Invalid Password
                    }, 
                    (r) => null,
                  ),
              ),
              const SizedBox(height: paddingValue),
              Row(children: [
                Expanded(child:
                  TextButton( // Cancel button
                    onPressed: () {
                      context.read<UserProfileBloc>().add(
                        const UserProfileEvent.applyPressed()
                      );
                    },
                    child: const Text('Cancel'),
                  ),
                ),
                Expanded(child:
                  TextButton( // Apply button
                    onPressed: () {
                      context.read<UserProfileBloc>().add(
                        const UserProfileEvent.goBackPressed()
                      );
                    },
                    child: const Text('Apply'),
                  ),
                ),
                Expanded(child:
                  TextButton( // Sign Out button
                    //TODO implement this signing out event
                    onPressed: () {
                      context.read<AuthBloc>().add(
                        const AuthEvent.signedOut()
                      );
                    },
                    child: const Text('Sign out'),
                  ),
                ),
              ],),
              if(state.isSubmiting) ...[
                const SizedBox(height: paddingValue,),
                const LinearProgressIndicator(),
              ],
            ],
          ),
        );
      },
    );
  }
}
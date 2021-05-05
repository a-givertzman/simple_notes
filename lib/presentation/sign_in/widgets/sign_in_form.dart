import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  // const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) => {
        state.authFailureOrSuccessOption.fold(
          () {},   // if Option is none()
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.props[0].toString(),
              ).show(context);
            }, 
            (r) {
              // TODO navigate to home page
            },
          ),
        ),
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: ListView(
            children: [
              const Text(
                'Hello,\nWelcome!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
                  validator: (value) => context
                    .read<SignInFormBloc>().state.emailAddress.value.fold(
                      (l) {
                        return l is Failure ? l.props[0].toString() : null;  // Invalid Email
                      }, 
                      (r) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
                validator: (value) => context
                  .read<SignInFormBloc>().state.password.value.fold(
                    (l) {
                      return l is Failure ? l.props[0].toString() : null; // Invalid Password
                    }, 
                    (r) => null,
                  ),
              ),
              const SizedBox(height: 8),
              Row(children: [
                Expanded(child:
                  TextButton( // Sign In Button
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithEmailAndPasswordPressed()
                      );
                    },
                    child: const Text('Sign in'),
                  ),
                ),
                Expanded(child:
                  TextButton( // Register Button
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                        const SignInFormEvent.registerWithEmailAndPasswordPressed()
                      );
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],),
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithGooglePressed()
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                ),
                child: const Text(
                  'Sign in with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
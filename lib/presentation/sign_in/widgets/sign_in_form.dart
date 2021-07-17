import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:auth_app/domain/core/error/failure.dart';
import 'package:auth_app/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  // const SignInForm({Key key}) : super(key: key);
  static const double paddingValue = 8.0;

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
              AutoRouter.of(context).push(const HomePageRoute());
            },
          ),
        ),
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: ListView(
            padding: const EdgeInsets.all(paddingValue),
            children: [
              const Text(
                'Hello,\nWelcome!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: paddingValue),
              TextFormField(                                                    // Email field
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
                        return l is Failure ? l.props[0].toString() : null;     // Invalid Email
                      }, 
                      (r) => null,
                    ),
              ),
              const SizedBox(height: paddingValue),
              TextFormField(                                                    // Password field
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
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
                validator: (value) => context
                  .read<SignInFormBloc>().state.password.value.fold(
                    (l) {
                      return l is Failure ? l.props[0].toString() : null;       // Invalid Password
                    }, 
                    (r) => null,
                  ),
              ),
              const SizedBox(height: paddingValue),
              Row(children: [
                Expanded(child:
                  TextButton(                                                   // Sign In Button
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithEmailAndPasswordPressed()
                      );
                    },
                    child: const Text('Sign in'),
                  ),
                ),
                Expanded(child:
                  TextButton(                                                   // Register Button
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                        const SignInFormEvent.registerWithEmailAndPasswordPressed()
                      );
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],),
              ElevatedButton(                                                   // Sign In with Google
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
              ElevatedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithFacebookPressed()
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                ),
                child: const Text(
                  'Sign in with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
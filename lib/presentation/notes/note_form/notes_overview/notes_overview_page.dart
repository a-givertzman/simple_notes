import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/auth/auth_bloc.dart';
import 'package:auth_app/application/notes/notes_events_bloc/notes_evens_bloc.dart';
import 'package:auth_app/application/notes/notes_list_bloc/notes_list_bloc.dart';
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/injection.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:auth_app/presentation/notes/note_form/notes_overview/widgets/notes_overview_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NotesListBloc>(
          create: (context) => getIt<NotesListBloc>()
            ..add(const NotesListEvent.listAllStarted()),
        ),
        BlocProvider<NotesEvensBloc>(
          create: (context) => getIt<NotesEvensBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  dPrint.log("Notes Overview Page: Unauthenticated");
                  // context.router.push(const SignInPageRoute());
                },
                orElse: () {
                },
              );
            },
          ),
          BlocListener<NotesEvensBloc, NotesEvensState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    duration: flushBarDuration,
                    message: state.noteFailure.map(
                      unexpected: 
                        (nFailure) => 'Ошибка...\n${nFailure.message}',
                      noPermission: 
                        (nFailure) => 'Ошибка...\n${nFailure.message}',
                      couldNotBeFound: 
                        (nFailure) => 'Ошибка...\n${nFailure.message}',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Notes overview'),
              leading: IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context.read<AuthBloc>().add(
                    const AuthEvent.signedOut(),
                  );
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.indeterminate_check_box),
                  onPressed: () {
          
                  },
                )
              ],
              // automaticallyImplyLeading: false,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                //TODO Navigate to NoteFormPage
              },
              child: const Icon(Icons.add),
            ),
            body: const NotesOverviewBody(),
          ),
      ),
    );
  }
}

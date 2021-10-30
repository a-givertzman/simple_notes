import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_app/application/notes/notes_list_bloc/notes_list_bloc.dart';
import 'package:auth_app/domain/debug/dprint.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:auth_app/presentation/notes/note_form/notes_overview/widgets/critical_error_widget.dart';
import 'package:auth_app/presentation/notes/note_form/notes_overview/widgets/error_note_card.dart';
import 'package:auth_app/presentation/notes/note_form/notes_overview/widgets/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesListBloc, NotesListState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            color: Colors.blueGrey,
          ), 
          loadingProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            dPrint.log('[NotesOverviewBody.loadSuccess]');
            return ListView.builder(
              itemCount: state.notes.size,
              itemBuilder: (context, index) {
                final note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(note: note);
                } else {
                  return NoteCard(note: note);
                }
              },
            );
          }, 
          loadFailure: (state) {
            return CriticalErrorWidget(failure: state.noteFailure);
          }, 
        );
      },
    );
  }
}



// BlocProvider(
//               create: (context) => getIt<NotesListBloc>(),
//               child: AspectRatio(
//                 aspectRatio: 4/3,
//                 child: Container(
//                   color: Colors.blueGrey,
//                   child: FadeInImage.assetNetwork(
//                     placeholder: 'assets/images/circular_progress_indicator_small.gif',
//                     image: 
//                       'http://new.guslica.ru/image/cache/catalog/cuttings/perennial/Angel%20of%20Hope%201-600x600.jpg',
                    
//                     // fit: BoxFit.,
//                     height: 450,
//                   ),
//                 ),
//               ),
//             );
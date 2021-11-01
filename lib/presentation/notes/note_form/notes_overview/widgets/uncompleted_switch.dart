import 'package:auth_app/application/notes/notes_list_bloc/notes_list_bloc.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UncompletedSwitch extends StatefulWidget {
  const UncompletedSwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<UncompletedSwitch> createState() => _UncompletedSwitchState();
}

class _UncompletedSwitchState extends State<UncompletedSwitch> {
  bool _toggleState = true;
  @override
  Widget build(BuildContext context) {
    final notesListBloc = context.read<NotesListBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: commonPadding),
      child: InkResponse(
        onTap: () {
          setState(() {            
            _toggleState = notesListBloc.state.maybeMap(
              loadAllSuccess:(_) => false,
              loadUncompletedSuccess:(_) => true,
              orElse: () => false,
            );
          });
          notesListBloc.add(_toggleState 
            ? const NotesListEvent.listAllStarted()
            : const NotesListEvent.listUncompletedStarted(),
          );
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: _toggleState
            ? const Icon(
              Icons.check_box_outline_blank, 
              key: Key('outline'),
            )
            : const Icon(
              Icons.check_box_outlined, 
              key: Key('indeterminate')
            ),
        ),
      ),
    );
  }
}

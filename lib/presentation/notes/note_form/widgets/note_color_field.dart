import 'package:auth_app/application/notes/note_form_bloc/note_form_bloc.dart';
import 'package:auth_app/domain/notes/vaue_object.dart';
import 'package:auth_app/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteColorField extends StatelessWidget {
  const NoteColorField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (prev, curr) => prev.note.color != curr.note.color,
      builder: (context, state) {
        return Container(
          height: 80.0,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: commonPadding),
            scrollDirection: Axis.horizontal,
            itemCount: NoteColor.predefinedColors.length,
            itemBuilder:(context, index) {
              final itemColor = NoteColor.predefinedColors[index];
              return GestureDetector(
                onTap: () {
                  return context.
                    read<NoteFormBloc>().
                    add(
                      NoteFormEvent.colorChanged(itemColor),
                    );
                },
                child: Material(
                  color: itemColor,
                  elevation: 4, // элемеент отбросит тень
                  shape: CircleBorder(
                    side: state.note.color.value.fold(
                      (_) => BorderSide.none, 
                      (color) => color == itemColor
                        ? const BorderSide(width: 1.5)
                        : BorderSide.none,
                    ),
                  ),
                  child: const SizedBox(
                    width: 50,
                    height: 50,
                  ),
                ),
              );
            }, 
            separatorBuilder:(context, index) {
              return const SizedBox(width: commonPadding * 1.5,);
            }, 
          ),
        );
      },
    );
  }
}

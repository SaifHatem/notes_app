import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read%20notes%20cubit/read_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_botton_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'Notes view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(

                  //! دي عشان احل مشكلة الكيبورد لما بتظهر
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  context: context,
                  builder: (context) {
                    return const AddNoteModalSheet();
                  });
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesViewBody(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteModalSheet extends StatelessWidget {
  const AddNoteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the keyboard height using MediaQuery
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: keyboardHeight, // Adjust padding based on the keyboard height
          left: 16,
          right: 16,
          top: 20,
        ),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
              if (state is AddNoteFailure) {
                print('error when adding note ${state.errorMessage}');
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const AddNoteForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}

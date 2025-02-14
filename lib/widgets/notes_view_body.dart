import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 12),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(height: 20),
          Expanded(
            child: NotesListViewBuilder(),
          ),
        ],
      ),
    );
  }
}

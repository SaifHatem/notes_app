import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFFcc80),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text(
                'Seif Hatem',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Our new Google expertfsdhfgdsjhfgsdjhfgsdjhfdf',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 12),
              child: Text(
                'Mai 21, 2020',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 14,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, EditNoteView.id);
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

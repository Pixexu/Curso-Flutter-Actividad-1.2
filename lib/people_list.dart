import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  //final _biggerFont = const TextStyle(fontSize: 18);
  final _randomNames = RandomNames(Zone.us);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i >= _suggestions.length) {
          //Afegir 10 noms més
          for (var i = 0; i < 10; i++) {
            _suggestions.add(_randomNames.fullName());
          }
        }
        return Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.person_2,
                color: Colors.orange,
                size: 30,
              ),
              title: Text(
                _suggestions[i],
                //style: _biggerFont,
                style: GoogleFonts.acme(
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
              tileColor: Colors.red[50],
              trailing: const Icon(
                Icons.call,
                color: Colors.orange,
                size: 30,
              ),
            ),
            const Divider(
              color: Colors.red,
              height: 3,
              thickness: 1,
            ),
          ],
        );
      },
    );
  }
}

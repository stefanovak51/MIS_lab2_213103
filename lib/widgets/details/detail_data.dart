import 'package:flutter/material.dart';
import '../../models/joke_model.dart';

class DetailData extends StatelessWidget {
  final int id;
  final Type type;
  const DetailData({super.key, required this.id, required this.type});


  @override
  Widget build(BuildContext context) {
    final jokes = type.jokes;
    return Container(
        child: Column(
          children: List.generate(jokes.length, (index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Card(
                color: Colors.deepOrange[100],
                child: ListTile(
                  title: Text(jokes[index].setup,
                      style:  const TextStyle(color: Colors.deepOrange, fontSize: 20, fontWeight: FontWeight.w500)),
                  subtitle: Text(jokes[index].punchline,
                      style:  TextStyle(color: Colors.deepPurple[900], fontSize: 18, fontWeight: FontWeight.w500)),
                ),
              ), );
          }),
        )
    );
  }
}

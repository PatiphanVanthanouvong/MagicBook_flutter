import 'package:flutter/material.dart';
import 'package:magic_book_1/widgets/bookviewlist.dart';

class BookPage extends StatelessWidget {
  final NewBookt items1;
  const BookPage({super.key, required this.items1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(items1.title),
      ),
      body: Column(children: [
        Image.asset(items1.imageset,
        
        fit: BoxFit.cover,),


        Text(items1.title)
      ]),
    );
  }
}

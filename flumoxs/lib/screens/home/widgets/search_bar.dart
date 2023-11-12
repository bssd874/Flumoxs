import 'package:flutter/material.dart';

class SearchBarView extends StatefulWidget {
  const SearchBarView({super.key});

  @override
  State<SearchBarView> createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      margin: EdgeInsets.fromLTRB(10, 15, 6, 15),
      padding: EdgeInsets.fromLTRB(120, 10, 110, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80), color: Color.fromARGB(255, 28, 38, 57),
      ),
      child: Text(
        "Make Your Own Style",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white
        ),
      ),
    );
  }
}
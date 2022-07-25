import 'package:clean_architecture/plugins/searchbar.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          searchBarUI(),
        ],
      ),
    );
  }
}

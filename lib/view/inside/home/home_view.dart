import 'package:flutter/material.dart';
import 'package:movie_app_test/view/widgets/button_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Movies'),
        actions: [
          ButtonWidget(
            onPressed: () {},
            caption: 'New',
          ),
        ],
      ),
    );
  }
}

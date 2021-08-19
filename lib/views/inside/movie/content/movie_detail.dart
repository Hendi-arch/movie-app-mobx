import 'package:flutter/material.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/views/inside/movie/local_widgets/movie_drop_down_field.dart';
import 'package:movie_app_test/views/inside/movie/local_widgets/movie_form_field.dart';
import 'package:movie_app_test/views/widgets/button_widget.dart';
import 'package:movie_app_test/views/widgets/spacer_widget.dart';

class MovieDetail extends StatefulWidget {
  final AppState appState;
  const MovieDetail({Key? key, required this.appState}) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  // holding data state for save
  String selectedTags = '';
  final TextEditingController titleController = TextEditingController();
  final TextEditingController directorController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leadingWidth: 20,
          title: Text(
            widget.appState != AppState.add ? 'Update Movie' : 'New Movie',
          ),
          actions: [
            if (widget.appState != AppState.add) ...[
              ButtonWidget(
                onPressed: () {},
                caption: 'Update',
              ),
              ButtonWidget(
                onPressed: () {},
                caption: 'Delete',
              )
            ] else
              ButtonWidget(
                onPressed: () {},
                caption: 'Save',
              ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SpacerWidget(),
                MovieFormField(
                  label: 'Title',
                  textEditingController: titleController,
                ),
                SpacerWidget(),
                MovieFormField(label: 'Director', textEditingController: directorController),
                SpacerWidget(),
                MovieDropDownField(),
                SpacerWidget(),
                MovieFormField(
                  label: 'Summary',
                  maxLines: null,
                  textEditingController: summaryController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

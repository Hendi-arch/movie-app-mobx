import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app_test/app/route_observer.dart';
import 'package:movie_app_test/core/viewmodels/movie/movie_viewmodel.dart';

class MovieList extends StatefulWidget {
  MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> with RouteAware {
  final _viewModel = MovieViewModel();

  @override
  void initState() {
    _viewModel.getMovie();
    super.initState();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    super.didChangeDependencies();
  }

  @override
  void didPopNext() {
    _viewModel.getMovie();
    super.didPopNext();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => _viewModel.onTapMovie(_viewModel.movies[index]),
              title: Text(_viewModel.movies[index].title ?? ''),
              subtitle: Text(_viewModel.movies[index].summary ?? ''),
            );
          },
          separatorBuilder: (context, index) => Divider(color: Colors.black),
          itemCount: _viewModel.movies.length,
        );
      },
    );
  }
}

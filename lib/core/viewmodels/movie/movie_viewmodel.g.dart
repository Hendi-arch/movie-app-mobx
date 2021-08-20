// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieViewModel on _MovieViewModel, Store {
  final _$moviesAtom = Atom(name: '_MovieViewModel.movies');

  @override
  ObservableList<MovieModel> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<MovieModel> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$addMovieAsyncAction = AsyncAction('_MovieViewModel.addMovie');

  @override
  Future<dynamic> addMovie(MovieModel data) {
    return _$addMovieAsyncAction.run(() => super.addMovie(data));
  }

  final _$updateMovieAsyncAction = AsyncAction('_MovieViewModel.updateMovie');

  @override
  Future<dynamic> updateMovie(String id, MovieModel data) {
    return _$updateMovieAsyncAction.run(() => super.updateMovie(id, data));
  }

  final _$deleteMovieAsyncAction = AsyncAction('_MovieViewModel.deleteMovie');

  @override
  Future<dynamic> deleteMovie(String id) {
    return _$deleteMovieAsyncAction.run(() => super.deleteMovie(id));
  }

  final _$getMovieAsyncAction = AsyncAction('_MovieViewModel.getMovie');

  @override
  Future<dynamic> getMovie() {
    return _$getMovieAsyncAction.run(() => super.getMovie());
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}

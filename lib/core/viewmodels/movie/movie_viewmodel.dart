import 'package:mobx/mobx.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';

part 'movie_viewmodel.g.dart';

class MovieViewModel = _MovieViewModel with _$MovieViewModel;

abstract class _MovieViewModel with Store {
  static final _appRouter = locator<AppRouter>();

  @observable
  ObservableList<MovieModel> movies = ObservableList<MovieModel>();

  @action
  void addMovie() {}

  @action
  void updateMovie() {}

  @action
  void deleteMovie() {}

  void onAddNewMovie() {
    _appRouter.push(MovieDetailRoute(appState: AppState.add));
  }

  void onTapMovie() {
    _appRouter.push(MovieDetailRoute(appState: AppState.update));
  }
}

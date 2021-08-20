import 'package:mobx/mobx.dart';
import 'package:movie_app_test/app/app_locator.dart';
import 'package:movie_app_test/app/app_router.gr.dart';
import 'package:movie_app_test/core/constant/enums.dart';
import 'package:movie_app_test/core/models/movie_model.dart';
import 'package:movie_app_test/core/services/database_service.dart';

part 'movie_viewmodel.g.dart';

class MovieViewModel = _MovieViewModel with _$MovieViewModel;

abstract class _MovieViewModel with Store {
  static final _appRouter = locator<AppRouter>();
  static final _databaseService = locator<DatabaseService>();

  @observable
  ObservableList<MovieModel> movies = ObservableList<MovieModel>();

  @action
  Future addMovie(MovieModel data) async {
    await _databaseService.insertData(data.toMapWithId()).whenComplete(() => _appRouter.pop());
  }

  @action
  Future updateMovie(String id, MovieModel data) async {
    await _databaseService.updateData(id, data.toMap()).whenComplete(() => _appRouter.pop());
  }

  @action
  Future deleteMovie(String id) async {
    await _databaseService.removeData(id).whenComplete(() => _appRouter.pop());
  }

  @action
  Future getMovie() async {
    final _result = await _databaseService.findData();
    // clean previous data
    movies.clear();

    // insert new data
    _result.forEach((element) => movies.add(MovieModel.fromMap(element)));
  }

  void onAddNewMovie() {
    _appRouter.push(MovieDetailRoute(appState: AppState.add));
  }

  void onTapMovie(MovieModel data) {
    _appRouter.push(MovieDetailRoute(appState: AppState.update, data: data));
  }
}

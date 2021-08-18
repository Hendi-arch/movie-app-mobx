import 'package:auto_route/annotations.dart';

// paths
import 'package:movie_app_test/app/paths.dart';

// views
import 'package:movie_app_test/view/inside/home/home_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(path: home, initial: true, page: HomeView),
  ],
)
class $AppRouter {}

import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = "/homeView";
  static const bookDetailsView = "/bookDetailsView";
  static const searchViewBody = "/SearchViewBody";
  // All routers that app navigate with
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        /* routes with only "/" as path it initial route that the app navigate to */
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchViewBody,
        builder: (context, state) => const SearchViewBody(),
      ),
    ],
  );
}

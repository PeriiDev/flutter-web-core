import 'package:flutter_web_core/exports.dart';

class AppRouter {
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    errorBuilder: _goErrorPage,
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: _goLoginPage,
        redirect: _redirectLoginPage,
      ),
      GoRoute(
        path: '/home',
        redirect: _redirectHomePage,
        builder: _goHomePage,
        routes: <GoRoute>[
          GoRoute(
            path: 'contact/:id',
            builder: _goContactPage,
          ),
          GoRoute(
            path: 'about',
            builder: _goAboutPage,
          ),
        ],
      ),
    ],
  );

  static Widget _goHomePage(BuildContext context, GoRouterState state) => const HomePage();
  static Widget _goContactPage(context, state) => ContactPage(params: state.params);
  //static Widget _goAboutPage(context, GoRouterState state) => AboutPage(params: state.extra as Map<String, dynamic>);
  static Widget _goAboutPage(context, GoRouterState state) => const AboutPage();
  static Widget _goErrorPage(BuildContext context, GoRouterState state) {
    return const ErrorPage();
  }

  static Page<dynamic> _goLoginPage(context, state) {
    return NoTransitionPage<void>(
      key: state.pageKey,
      child: LoginPage(queryParams: state.queryParams),
    );
  }

  //Redirects methods
  static FutureOr<String?> _redirectLoginPage(BuildContext context, GoRouterState state) async {
    return LocalStorage.email.length > 3 ? '/home' : null;
  }

  static FutureOr<String?> _redirectHomePage(BuildContext context, GoRouterState state) async {
    return LocalStorage.email.length > 3 ? null : '';
  }
}

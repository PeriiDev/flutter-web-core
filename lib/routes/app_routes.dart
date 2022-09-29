import 'package:flutter_web_core/exports.dart';

class AppRouter {

  static const routes = {
    'root': '/',
    'login': '/login',
    'about': 'about',
    'contact': 'contact/:id',
  };


  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    errorBuilder: _goErrorPage,
    //redirect: (context, state) async {},
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: _goHomePage,
        routes: <GoRoute>[
          GoRoute(
            path: routes['contact']!,
            builder: _goContactPage,
          ),
          GoRoute(
            path: routes['about']!,
            builder: _goAboutPage,
          ),
        ],
      ),
      GoRoute(
        path: '/login',
        pageBuilder: _goLoginPage,
        /*builder: (BuildContext context, GoRouterState state) {
            return LoginPage(queryParams: state.queryParams);
          },*/
      ),
    ],
  );

  static Widget _goHomePage(BuildContext context, GoRouterState state) => const HomePage();
  static Widget _goContactPage(context, state) => ContactPage(params: state.params);

  //static Widget _goAboutPage(context, GoRouterState state) => AboutPage(params: state.extra as Map<String, dynamic>);
  static Widget _goAboutPage(context, GoRouterState state) => const AboutPage();


  static Widget _goErrorPage(BuildContext context, GoRouterState state) => const ErrorPage();

  static Page<dynamic> _goLoginPage(context, state) {
    return NoTransitionPage<void>(
      key: state.pageKey,
      child: LoginPage(queryParams: state.queryParams),
    );
  }
}

import 'package:flutter_web_core/exports.dart';
import 'package:flutter_web_core/global/data/data_sources/users_remote_data_source.dart';
import 'package:go_router/src/pages/custom_transition_page.dart';

//import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  //usePathUrlStrategy();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path); //Remove hash(#) from URL

  await LocalStorage.init();

  UserRemoteDataSource.getAllCarsNestJs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// The title of the app.
  static const String title = 'Flutter Web Core';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => UserCubit(),
        ),
        BlocProvider(create: (_) => HomeCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: AppTheme.lightTheme,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_core/bloc/user/user_cubit.dart';
import 'package:flutter_web_core/exports.dart';
import 'package:flutter_web_core/routes/app_routes.dart';

import 'package:go_router/src/pages/custom_transition_page.dart';

void main() {
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path); //Remove hash(#) from URL

  print('Me redibujo');

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
        
        BlocProvider(create: (_) => UserCubit()),
      ],
      child: MaterialApp.router(
        title: title,
        theme: AppTheme.lightTheme,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
      ),
    );
  }
}

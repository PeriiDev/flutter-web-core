import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_core/bloc/user/user_cubit.dart';
import 'package:flutter_web_core/routes/app_routes.dart';
import 'package:flutter_web_core/widgets/custom_box.dart';

class AboutPage extends StatelessWidget {
  //final params;
  const AboutPage({
    super.key,
    /*required this.params*/
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBox(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case UserInitialState:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text((state as UserInitialState).isLogged ? 'Estoy logueado' : 'Sin loguear'),
                  ],
                );
              case UserLoggedState:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text((state as UserLoggedState).user.password),
                  ],
                );
              default:
                return const Center(child: Text('Error en la data'));
            }
          },
        ),
      ),

      // body: BlocBuilder<UserCubit, UserState>(
      //   builder: (context, state) {
      //     print(state.runtimeType);
      //     return CustomBox(
      //       borderColor: Colors.red,
      //       borderWidth: 5,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           const Text('About Page'),
      //           Text(AppRouter.routes['login']!),
      //           //Text(params.toString()),
      //           state.runtimeType == UserInitialState
      //               ? Text('Sin usuario')
      //               : state.runtimeType == UserLoggedState
      //                   ? Text((state as UserLoggedState).user.email)
      //                   : Text('Default')
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}

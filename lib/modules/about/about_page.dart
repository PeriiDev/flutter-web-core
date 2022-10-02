import 'package:flutter_web_core/exports.dart';

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
    );
  }
}

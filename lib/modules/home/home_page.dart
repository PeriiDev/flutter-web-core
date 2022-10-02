import 'package:flutter_web_core/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: const Text('Home'),
            ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              switch (state.runtimeType) {
                case HomeDisplayUsers:
                  return SelectionArea(child: Text((state as HomeDisplayUsers).users.toString()));
                default:
                  return const SelectionArea(child:  Text('No se han podido cargar los usuarios'));
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              final random = Random().nextInt(10);
              context.go('/home/contact/$random');
            },
            child: const Text('Contact Page'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              //final param = {"email": "pedro@gmail.com", "password": "123456"};
              //context.go('/about', extra: param);
              //context.goNamed('aboutPage', params: {"Pedro": ""});

              final user = User(email: "pedro@gmail.com", password: "123456");

              BlocProvider.of<UserCubit>(context).activateUser(user);
              //Guardar la info en la memoria

              //userCubit.close();
              context.go('/home/about');
              //Router.neglect(context, () => context.replace('/about'));
            },
            child: const Text('About Page'),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => context.go('/'),
            //onPressed: () => Router.neglect(context, () => context.replace('/login')),
            //onPressed: () => GoRouter.of(context).go('/login?query=online&limit=3'),
            child: const Text('Login Page'),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter_web_core/exports.dart';


class LoginPage extends StatelessWidget {
  final Map<String, String> queryParams;

  const LoginPage({
    super.key,
    required this.queryParams,
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final currentPath = router.location.toString();

    return Scaffold(
      /*appBar: AppBar(
        title: Text('Login Page - Path: $currentPath '),
      ),*/
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
                child: Container(
              color: Colors.blue.shade300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomOnHoverText(
                    builder: ((isHovered) {
                      final color = isHovered ? Colors.orange : Colors.white;
                      return Text(
                        'Sign in to project',
                        style: TextStyle(fontSize: 50, fontFamily: 'Lato', color: color),
                      );
                    }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        size: 50,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.featured_video_rounded,
                        size: 50,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  CustomOnHoverButton(
                    child: ElevatedButton(
                      onPressed: () {
                        //final param = {"email": "pedro@gmail.com", "password": "123456"};
                        //context.go('/about', extra: param);
                        //context.goNamed('aboutPage', params: {"Pedro": ""});
                        final user = User(email: "pedro@gmail.com", password: "123456");
                        BlocProvider.of<UserCubit>(context).activateUser(user);
                        LocalStorage.email = user.email;
                        //Guardar la info en la memoria

                        BlocProvider.of<HomeCubit>(context).displayAllUsers();

                        //userCubit.close();
                        //Router.neglect(context, () => context.replace('/'));
                        Router.neglect(context, () => context.replace('/home'));
                        //context.replace('/home');
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              color: Colors.red,
            )),
          ],
        ),

        /*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Page',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              queryParams.toString(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),*/
      ),
    );
  }
}

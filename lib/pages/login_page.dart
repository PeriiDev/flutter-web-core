import 'package:flutter/material.dart';
import 'package:flutter_web_core/widgets/custom_box.dart';
import 'package:go_router/go_router.dart';

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
              color: Colors.blue,
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactPage extends StatelessWidget {
  final Map<String, String> params;

  const ContactPage({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final currentPath = router.location.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page - Path:"$currentPath"'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact Page',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              params.toString(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

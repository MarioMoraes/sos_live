import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context, rootNavigator: true).pushReplacementNamed('/home');
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('AJUDA EMERGENCIAL'),
            Image.asset('assets/images/splash_image.png', height: 150),
            const CircularProgressIndicator.adaptive()
          ],
        ),
      ),
    );
  }
}

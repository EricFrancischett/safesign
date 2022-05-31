import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/features/splash%20screen/controller/splash_screen_controller.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final _controller = SplashScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Observer(builder: (_) {
          _controller.checkIfUserIsLoggedIn(context);
          return Lottie.asset("/image/splashanimation.json");
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:safesign_app/core/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
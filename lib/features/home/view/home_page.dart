import 'package:flutter/material.dart';
import 'package:safesign_app/core/widgets/custom_appbar.dart';
import 'package:safesign_app/features/home/view/widgets/custom_drawer.dart';
import '../../../core/models/user_model.dart';

class HomePage extends StatelessWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(firstName: user.firstName!, lastName: user.lastName!, id: "1988069"),
      appBar: const CustomAppBar(),
      body: const Center(
        child: FlutterLogo(),
      ),
    );
  }
}
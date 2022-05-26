import 'package:flutter/material.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/widgets/custom_appbar.dart';
import 'package:safesign_app/core/widgets/custom_button.dart';
import 'package:safesign_app/features/home/view/widgets/custom_drawer.dart';
import '../../../core/models/user_model.dart';

class HomePage extends StatelessWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appDarkGrey,
      endDrawer: CustomDrawer(
          firstName: user.firstName!, lastName: user.lastName!, id: "1988069"),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 48, 24, 48),
        child: Column(children: [
          CustomButton(
              text: 'Document',
              onPressed: () {},
              selectIcon: Icons.insert_drive_file_rounded),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              text: 'Document',
              onPressed: () {},
              selectIcon: Icons.insert_drive_file_rounded),
        ]),
      ),
    );
  }
}

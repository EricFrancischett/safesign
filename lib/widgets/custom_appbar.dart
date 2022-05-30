import 'package:flutter/material.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/widgets/return_button.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const ReturnButton(),
        AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          backgroundColor: ColorsApp.appGrey,
          title: SizedBox(
            child: Image.asset(
              'image/NewLogoSafeSign.png',
              height: 100,
              width: 100,
            ),
          
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
                color: ColorsApp.appLightGrey,
                size: 36,
              ),
            )
          ],
        ),
      ],
    );
  }
}

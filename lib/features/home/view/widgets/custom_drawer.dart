import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';

class CustomDrawer extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String id;
  const CustomDrawer(
      {Key? key,
      required this.firstName,
      required this.lastName,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: ColorsApp.appDarkGrey.withOpacity(0.5),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        size: 80,
                        color: ColorsApp.appBlue,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        firstName,
                        style: FontsApp.mainFontTitle32SemiBold.copyWith(
                          color: ColorsApp.appLightGrey,
                        ),
                      ),
                      Text(
                        lastName,
                        style: FontsApp.mainFontTitle32SemiBold.copyWith(
                          color: ColorsApp.appLightGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "id: $id",
                        style: FontsApp.mainFontText20.copyWith(
                          color: ColorsApp.appLightGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        child: Text(
                          "Change Credentials",
                          style: FontsApp.mainFontText16.copyWith(
                            color: ColorsApp.appBlue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {
                          //Navigate to ChangeCredentialsPage
                        },
                      ),
                    ],
                  ),
                  InkWell(
                    child: Text(
                      "Logout",
                      style: FontsApp.mainFontText16.copyWith(
                        color: ColorsApp.appRed,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      //Navigate to LoginPage
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

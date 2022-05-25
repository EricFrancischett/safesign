import 'package:flutter/material.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';

class MainButtom extends StatelessWidget {
  final String text;
  final Future Function()? onPressed;

  const MainButtom({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorsApp.appBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: FontsApp.mainFontText24.copyWith(
              fontWeight: FontWeight.w600, color: ColorsApp.appLightGrey),
        ),
      ),
    );
  }
}

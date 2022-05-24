import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';

class MainButtom extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const MainButtom({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: ColorsApp.appBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: Text(
            text,
            style: FontsApp.mainFontText24.copyWith(
                fontWeight: FontWeight.w600, color: ColorsApp.appLightGrey),
          ),
        ),
      ),
    );
  }
}

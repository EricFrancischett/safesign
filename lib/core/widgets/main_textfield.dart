import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';


class MainTextField extends StatefulWidget {
  final TextEditingController? textController;
  final String? labelText;
  final Icon? choosedIcon;
  final bool isObscure;

  const MainTextField(
      {Key? key,
      this.textController,
      this.labelText,
      this.choosedIcon,
      this.isObscure = false})
      : super(key: key);

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        
        style: FontsApp.mainFontText24.copyWith(color: ColorsApp.appLightGrey),
        cursorColor: ColorsApp.appBlue,
        controller: widget.textController,
        obscureText: widget.isObscure,
        decoration: InputDecoration(
          prefixIcon: widget.choosedIcon,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: ColorsApp.appBlue,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
            borderSide: BorderSide(
              width: 2,
              color: ColorsApp.appGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
            borderSide: BorderSide(
              width: 2,
              color: ColorsApp.appBlue,
            ),
          ),
        ),
      ),
    );
  }
}

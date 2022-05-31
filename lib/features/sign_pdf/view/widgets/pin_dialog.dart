import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';
import 'package:safesign_app/core/widgets/main_buttom.dart';
import 'package:safesign_app/core/widgets/main_textfield.dart';
import 'package:safesign_app/features/sign_pdf/controller/sign_pdf_controller.dart';
import '../../../../core/theme/colors_app.dart';

class PinDialog extends StatelessWidget {
  PinDialog({Key? key}) : super(key: key);
    final _controller = SignPdfController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: ClipPath(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: ColorsApp.appBlue, width: 3),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: ColorsApp.appDarkGrey.withOpacity(0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Insert your pin to sign document",
                  style: FontsApp.mainFontText16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.appLightGrey),
                ),
                const SizedBox(
                  height: 8,
                ),
                Observer(builder: (_) {
                  return MainTextField(
                    keyboardType: TextInputType.number,
                    onChanged: _controller.changePin,
                    labelText: 'Pin',
                    maxLength: 4,
                    choosedIcon: Icon(
                      Icons.key_rounded,
                      color: ColorsApp.appBlue,
                    ),
                  );
                }),
                const SizedBox(
                  height: 16,
                ),
                Observer(builder: (_) {
                  return MainButtom(
                    onPressed: _controller.isTypedPinValid
                        ? () {
                            _controller.signDocument();
                          }
                        : null,
                    child: Text(
                      "Sign",
                      style: FontsApp.mainFontText24.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.appLightGrey),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

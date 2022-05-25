import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:safesign_app/core/generics/resource.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';
import 'package:safesign_app/core/widgets/main_buttom.dart';
import 'package:safesign_app/core/widgets/main_textfield.dart';
import 'package:safesign_app/core/widgets/return_button.dart';
import 'package:safesign_app/features/login/view/login_page.dart';
import 'package:safesign_app/features/login/view/widgets/custom_error_dialog.dart';
import 'package:safesign_app/features/register/controller/register_controller.dart';

class RegisterPage extends StatelessWidget {
  final _controller = RegisterController();

  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsApp.appDarkGrey,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 48, 24, 48),
              child: Column(
                children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const ReturnButton(),
                      Expanded(
                        child: Hero(
                          tag: 'logo',
                          child: Image.asset(
                            'image/NewLogoSafeSign.png',
                            height: 70,
                            width: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Register',
                            style: FontsApp.mainFontTitle32SemiBold.copyWith(
                              color: ColorsApp.appLightGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MainTextField(
                                  onChanged: _controller.changeFirstName,
                                  labelText: 'First Name',
                                  choosedIcon: Icon(
                                    Icons.account_circle_rounded,
                                    color: ColorsApp.appBlue,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: MainTextField(
                                  onChanged: _controller.changeLastName,
                                  labelText: 'Last Name',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
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
                            return MainTextField(
                              keyboardType: TextInputType.emailAddress,
                              onChanged: _controller.changeEmail,
                              labelText: 'Email',
                              choosedIcon: Icon(
                                Icons.mail_rounded,
                                color: ColorsApp.appBlue,
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 16,
                          ),
                          Observer(builder: (_) {
                            return MainTextField(
                              onChanged: _controller.changePassword,
                              labelText: 'Password',
                              choosedIcon: Icon(
                                Icons.lock_rounded,
                                color: ColorsApp.appBlue,
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 16,
                          ),
                          Observer(builder: (_) {
                            return MainTextField(
                              onChanged: _controller.changePasswordConfirmation,
                              labelText: 'Confirm Password',
                              choosedIcon: Icon(
                                Icons.lock_rounded,
                                color: ColorsApp.appBlue,
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                      Observer(builder: (_) {
                        return MainButtom(
                            text: 'Register',
                            onPressed: _controller.allCredentialIsValid
                                ? () async {
                                    _controller.setButtonToLoadingStatus();
                                    final resource = await _controller.registerUser();
                                    if (resource.hasError) {
                                      await showDialog(
                                              context: context,
                                              builder: (context) {
                                                return CustomErrorDialog(
                                                  errorMessage:
                                                      resource.error.toString(),
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                );
                                              })
                                          .then((_) => _controller
                                              .isButtonAtLoadingStatus = false);
                                    }
                                    if (resource.status == Status.success) {
                                      // ignore: use_build_context_synchronously
                                      await Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    }
                                  }
                                : null);
                      })
                    ],
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

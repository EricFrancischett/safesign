import 'package:flutter/material.dart';

class CustomErrorDialog extends StatelessWidget {
  final String errorMessage;
  final void Function() onPressed;
   const CustomErrorDialog(
      {Key? key, required this.errorMessage, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      backgroundColor: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).appBarTheme.backgroundColor,
              ),
              onPressed: onPressed,
              child: const Text("Ok!"),
            )
          ],
        ),
      ),
    );
  }
}
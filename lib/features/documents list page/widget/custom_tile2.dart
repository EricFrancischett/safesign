import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safesign_app/core/theme/fonts_app.dart';
import '../../../core/theme/colors_app.dart';

class CustomTile2 extends StatelessWidget {
  final String title;
  
  final Function()? action;
  const CustomTile2({Key? key,required this.title,  this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: ColorsApp.appGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
             const Icon(Icons.insert_drive_file_rounded
 ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: FontsApp.mainFontText24.copyWith(
                  color: ColorsApp.appLightGrey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
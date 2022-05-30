import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/widgets/custom_appbar.dart';
import 'package:safesign_app/features/home/widgets/custom_drawer.dart';
import 'package:safesign_app/features/home/widgets/custom_tile.dart';
import 'package:safesign_app/features/home/widgets/fabio.dart';
import 'package:safesign_app/features/sign_pdf/sign_pdf_page.dart';
import 'package:safesign_app/features/upload/view/upload_page.dart';
import '../../../core/models/user_model.dart';
import '../controller/home_controller.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Fabio(onPressed: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UploadPage(),
          ),
        );
      }),
      backgroundColor: ColorsApp.appDarkGrey,
      endDrawer: CustomDrawer(
          firstName: widget.user.firstName!,
          lastName: widget.user.lastName!,
          id: "1988069"),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Observer(
          builder: (_) {
            _controller.getDocumentstoSignLength();
            _controller.getPendingDocumentsLength();
            _controller.getAvailableDocumentsLength();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTile(
                    action: () async {
                      const url =
                          "https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf";
                      final refPDF = FirebaseStorage.instance.ref().child(url);
                      final bytes = await refPDF.getData();
                      final filename = basename(url);
                      final dir = await getApplicationDocumentsDirectory();
                      final file = File('${dir.path}/$filename');
                      await file.writeAsBytes(bytes!, flush: true);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SignPdfPage(file: file)),
                      );
                    },
                    number: _controller.documentstoSignLength,
                    title: "Documents to sign"),
                const SizedBox(
                  height: 16,
                ),
                CustomTile(
                    number: _controller.pendingDocumentsLength,
                    title: "Pending Documents"),
                const SizedBox(
                  height: 16,
                ),
                CustomTile(
                    number: _controller.availableDocumentsLength,
                    title: "Available Documents"),
              ],
            );
          },
        ),
      ),
    );
  }
}

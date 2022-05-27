import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/widgets/custom_appbar.dart';
import 'package:safesign_app/features/documents%20list%20page/view/documents_list_page.dart';
import 'package:safesign_app/features/home/widgets/custom_drawer.dart';
import 'package:safesign_app/features/home/widgets/custom_tile.dart';

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
  void initState() {
    _controller.getDocumentstoSignLength();
    _controller.getPendingDocumentsLength();
    _controller.getAvailableDocumentsLength();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appDarkGrey,
      endDrawer: CustomDrawer(
          firstName: widget.user.firstName!,
          lastName: widget.user.lastName!,
          id: "1988069"),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Observer(builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTile(
                number: _controller.documentstoSignLength,
                title: "Documents to sign",
                action: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DocumentsListPage.toSign(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTile(
                number: _controller.pendingDocumentsLength,
                title: "Pending Documents",
                action: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DocumentsListPage.pending(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTile(
                number: _controller.availableDocumentsLength,
                title: "Available Documents",
                action: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DocumentsListPage.available(),
                    ),
                  );
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}

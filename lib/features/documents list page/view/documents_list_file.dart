import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:safesign_app/core/theme/colors_app.dart';
import 'package:safesign_app/core/widgets/custom_appbar.dart';
import 'package:safesign_app/features/documents%20list%20page/controler/documents_list_controller.dart';

class DocumentsListPage extends StatefulWidget {
  final String titlePage;

  DocumentsListPage({Key? key, required this.titlePage}) : super(key: key);

  @override
  State<DocumentsListPage> createState() => _DocumentsListPageState();
}

class _DocumentsListPageState extends State<DocumentsListPage> {
  final _controller = DocumentsListController();

  @override
  void initState() {
    _controller.getDocumentsToSign();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appDarkGrey,
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    );
  }
}

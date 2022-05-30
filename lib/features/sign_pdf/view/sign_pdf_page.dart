import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:safesign_app/core/widgets/main_buttom.dart';
import 'package:safesign_app/features/sign_pdf/controller/sign_pdf_controller.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../../core/models/doc_model.dart';

class SignPdfPage extends StatefulWidget {
  final DocModel currentDoc;
  const SignPdfPage({Key? key, required this.currentDoc}) : super(key: key);

  @override
  State<SignPdfPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignPdfPage> {
  final _controller = SignPdfController();

  @override
  void initState() {
    _controller.changeCurrentDoc(widget.currentDoc);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Observer(builder: (_) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_controller.currentDoc.id!),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: SfPdfViewer.network(_controller.currentDoc.url!)),
              SizedBox(
                height: 16,
              ),
              MainButtom(
                  child: Text("Sign"),
                  onPressed: () async {
                    await _controller.signDocument();
                  })
            ],
          );
        }),
      ),
    );
  }
}

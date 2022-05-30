import 'package:flutter/material.dart';
import 'package:safesign_app/core/widgets/main_buttom.dart';
import 'package:safesign_app/features/sign_pdf/controller/sign_pdf_controller.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SignPdfPage extends StatefulWidget {
  final String path;
  const SignPdfPage({Key? key, required this.path}) : super(key: key);

  @override
  State<SignPdfPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignPdfPage> {
  final _controller = SignPdfController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Document to sign"),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: SfPdfViewer.network(
                    "https://firebasestorage.googleapis.com/v0/b/safesign-ccc2c.appspot.com/o/files%2FSh4LI9rHSmdQ19tkLXkv5jZkLE92%2FNF%20notebook.pdf?alt=media&token=41197ce1-bbd9-4663-b524-bddab24ac3fe")),
            SizedBox(
              height: 16,
            ),
            MainButtom(
                child: Text("Sign"),
                onPressed: () async {
                  await _controller.signDocument("Sh4LI9rHSmdQ19tkLXkv5jZkLE92",
                      "NF notebook.pdf");
                })
          ],
        ),
      ),
    );
  }
}

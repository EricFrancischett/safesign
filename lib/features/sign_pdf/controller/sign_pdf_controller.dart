import 'dart:io';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
part 'sign_pdf_controller.g.dart';

class SignPdfController = _SignPdfControllerBase with _$SignPdfController;

abstract class _SignPdfControllerBase with Store {
  @observable
  String path = "";

  @action
  void changeEmail(String newValue) => path = newValue;

  @action
  Future<void> signDocument(String owner_id, String document_id) async {
    Reference ref =
        await FirebaseStorage.instance.ref('/files/${owner_id}/${document_id}');
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}');
    await ref.writeToFile(file);
    final PdfDocument document = PdfDocument(
        inputBytes: File('${dir.path}/${ref.name}').readAsBytesSync());
    document.pages.add().graphics.drawString(
    'Document Signed!', PdfStandardFont(PdfFontFamily.helvetica, 12),
    brush: PdfSolidBrush(PdfColor(0, 0, 0)),
    bounds: const Rect.fromLTWH(0, 0, 150, 20));
   final outputFile = await file.writeAsBytes(document.save());
    document.dispose();
    final File finalFile = outputFile;
    String firebaseRef =
        "files/Sh4LI9rHSmdQ19tkLXkv5jZkLE92/NF notebook.pdf";
    await FirebaseStorage.instance.ref(firebaseRef).putFile(finalFile);
  }
}

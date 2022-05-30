import 'dart:io';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:safesign_app/core/models/doc_model.dart';
import 'package:safesign_app/core/models/user_model_keys.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
part 'sign_pdf_controller.g.dart';

class SignPdfController = _SignPdfControllerBase with _$SignPdfController;

abstract class _SignPdfControllerBase with Store {
  final user = FirebaseAuth.instance.currentUser!;

  @observable
  DocModel currentDoc = DocModel();

  @action
  void changeCurrentDoc(DocModel newValue) => currentDoc = newValue;

  @action
  Future<void> signDocument() async {
    Reference ref = await FirebaseStorage.instance
        .ref('files/${currentDoc.ownerId}/${currentDoc.id}.pdf');
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${ref.name}.pdf');
    await ref.writeToFile(file);
    final PdfDocument document = PdfDocument(
        inputBytes: File('${dir.path}/${ref.name}.pdf').readAsBytesSync());
    document.pages.add().graphics.drawString(
        'Document Signed!', PdfStandardFont(PdfFontFamily.helvetica, 12),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        bounds: const Rect.fromLTWH(0, 0, 150, 20));
    final outputFile = await file.writeAsBytes(document.save());
    document.dispose();
    final File finalFile = outputFile;
    String firebaseRef = "files/${currentDoc.ownerId}/${currentDoc.id}.pdf";
    await FirebaseStorage.instance.ref(firebaseRef).putFile(finalFile);
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .collection(UserModelKeys.documentsToSign)
        .doc(currentDoc.id)
        .delete();
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .collection(UserModelKeys.availableDocuments)
        .doc(currentDoc.id)
        .set({
      "_id": currentDoc.id,
      "owner_id": currentDoc.ownerId,
      "url": currentDoc.url,
    });
  }
}

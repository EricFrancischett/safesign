import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:safesign_app/core/models/user_model.dart';
import 'package:safesign_app/core/models/user_model_keys.dart';
part 'documents_list_controller.g.dart';

class DocumentsListController = _DocumentsListControllerBase
    with _$DocumentsListController;

abstract class _DocumentsListControllerBase with Store {
  final user = FirebaseAuth.instance.currentUser!;

  @observable
  ObservableList generalDocmentsList = [].asObservable();

  @observable
  ObservableList documentsToSign = [].asObservable();

  @observable
  ObservableList pendingDocuments = [].asObservable();

  @observable
  ObservableList availableDocuments = [].asObservable();

  @action
  Future<void> fetchDocumentByStatus(String documentType) async {
    final documentSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    final doc = documentSnapshot.data()![documentType] as List;

    switch (documentType) {
      case UserModelKeys.documentsToSign:
        documentsToSign = doc.asObservable();
        generalDocmentsList = documentsToSign;
        break;
      case UserModelKeys.availableDocuments:
        availableDocuments = doc.asObservable();
        generalDocmentsList = availableDocuments;
        break;
      case UserModelKeys.pendingDocuments:
        pendingDocuments = doc.asObservable();
        generalDocmentsList = pendingDocuments;
        break;
      default:
        break;
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:safesign_app/core/models/user_model.dart';
part 'documents_list_controller.g.dart';

class DocumentsListController = _DocumentsListControllerBase
    with _$DocumentsListController;

abstract class _DocumentsListControllerBase with Store {
  final user = FirebaseAuth.instance.currentUser!;
  
  
@observable
  List documentsToSign = [];
@action
  Future<void> getDocumentsToSign()async {
  final document = await FirebaseFirestore.instance
  .collection('users')
  .doc(user.uid)
  .get();
  final currentUser = UserModel.fromMap(document.data()!);
      documentsToSign = currentUser.documentsToSign!;
  }

@observable
  List pendingDocuments = [];
@action
  Future<void> getPendingDocuments()async {
  final document = await FirebaseFirestore.instance
  .collection('users')
  .doc(user.uid)
  .get();
  final currentUser = UserModel.fromMap(document.data()!);
      pendingDocuments = currentUser.pendingDocuments!;
  }


@observable
  List availableDocuments = [];
@action
  Future<void> getAvailableDocuments()async {

  final document = await FirebaseFirestore.instance
  .collection('users')
  .doc(user.uid)
  .get();
  final currentUser = UserModel.fromMap(document.data()!);
      availableDocuments = currentUser.availableDocuments!;
  }

}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import '../../../core/models/user_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final user = FirebaseAuth.instance.currentUser!;

  @observable
  int documentstoSignLength = 0;

  @action
  Future<void> getDocumentstoSignLength() async {
    final document = await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get();
    final currentUser = UserModel.fromMap(document.data()!);
    documentstoSignLength = currentUser.documentsToSign!.length;
  }

  @observable
  int pendingDocumentsLength = 0;

  @action
  Future<void> getPendingDocumentsLength() async {
    final document = await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get();
    final currentUser = UserModel.fromMap(document.data()!);
    pendingDocumentsLength = currentUser.pendingDocuments!.length;
  }

    @observable
  int availableDocumentsLength = 0;

  @action
  Future<void> getAvailableDocumentsLength() async {
    final document = await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get();
    final currentUser = UserModel.fromMap(document.data()!);
    availableDocumentsLength = currentUser.availableDocuments!.length;
  }
}

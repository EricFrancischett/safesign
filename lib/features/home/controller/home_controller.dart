import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:safesign_app/core/models/user_model_keys.dart';
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
        .collection(UserModelKeys.documentsToSign)
        .get();
    final docToSignList =
        document.docs.map((e) => UserModel.fromMap(e.data())).toList();
    if (docToSignList.isNotEmpty) {
      documentstoSignLength = docToSignList.length;
    } else {
      documentstoSignLength = 0;
    }
  }

  @observable
  int availableDocumentsLength = 0;

  @action
  Future<void> getAvailableDocumentsLength() async {
    final document = await FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .collection(UserModelKeys.availableDocuments)
        .get();
    final availableDocsList =
        document.docs.map((e) => UserModel.fromMap(e.data())).toList();
    if (availableDocsList.isNotEmpty) {
      availableDocumentsLength = availableDocsList.length;
    } else {
      availableDocumentsLength = 0;
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

import '../../../core/models/user_model.dart';
part 'upload_controller.g.dart';

class UploadController = _UploadControllerBase with _$UploadController;

abstract class _UploadControllerBase with Store {
  @observable
  String documentName = '';

  @action
  void changeDocumentName(String newValue) => documentName = newValue;

  @observable
  bool isTileExpanded = false;

  @action
  void changeTileExpansion() => isTileExpanded = !isTileExpanded;

  @observable
  ObservableList<UserModel> userList = <UserModel>[].asObservable();

  @action
  Future<List<UserModel>> getUserModelList() async {
    final documents =
        await FirebaseFirestore.instance.collection("users").get();
    userList = documents.docs
        .map((e) => UserModel.fromMap(e.data()))
        .toList()
        .asObservable();
    return userList;
  }

  @observable
  ObservableList<UserModel> selectedUserList = <UserModel>[].asObservable();

  @action
  void addUserToSelectedList(UserModel selectedUserModel) {
    selectedUserList.add(selectedUserModel);
  }

  @action
  void removeUserFromSelectedList(UserModel selectedUserModel) {
    selectedUserList.remove(selectedUserModel);
  }

  @computed
  bool get isDocumentNameValid =>
      documentName.isNotEmpty && documentName.length >= 6;

  @computed
  bool get isPeopleInvolvedValid =>
      selectedUserList.isNotEmpty && selectedUserList != [];

  @computed
  bool get areDocumentsInfoValid =>
      isDocumentNameValid && isPeopleInvolvedValid;

  @observable
  bool isButtonAtLoadingStatus = false;

  @action
  void setButtonToLoadingStatus() => isButtonAtLoadingStatus = true;
}

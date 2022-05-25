

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:safesign_app/core/generics/resource.dart';
import 'package:safesign_app/core/models/user_model.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  @observable
  String firstName = '';
  @action
  void changeFirstName(String newValue) => firstName = newValue;

  @computed
  bool get isFirstNameValid => firstName.isNotEmpty;

  @observable
  String lastName = '';
  @action
  void changeLastName(String newValue) => lastName = newValue;

  @computed
  bool get isFirstLastValid => lastName.isNotEmpty;

  @observable
  String pin = '';
  @action
  void changePin(String newValue) => pin = newValue;

  @computed
  bool get isIdValid => pin.isNotEmpty && pin.length == 4;

  @observable
  String email = '';

  @action
  void changeEmail(String newValue) => email = newValue;

  @computed
  bool get isEmailValid => email.contains('@') && email.contains('.com');

  @observable
  String password = '';

  @action
  void changePassword(String newValue) => password = newValue;

  @computed
  bool get isPasswordValid => password.length >= 6 && password.length <= 12;

  @observable
  String passwordConfirmation = '';

  @action
  void changePasswordConfirmation(String newValue) =>
      passwordConfirmation = newValue;

  @computed
  bool get isPasswordConfirmationValid => passwordConfirmation == password;

  @computed
  bool get allCredentialIsValid =>
      isPasswordValid && isPasswordConfirmationValid;

  @observable
  bool isButtonAtLoadingStatus = false;

  @action
  void setButtonToLoadingStatus() => isButtonAtLoadingStatus = true;

  @action
  Future<Resource<UserCredential, String>> registerUser() async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      FirebaseFirestore.instance
          .collection('users')
          .doc(credential.user!.uid)
          .set({
        'id': credential.user!.uid,
        'email': email,
        'firstname': firstName,
        'lastname': lastName,
        'pin': pin,
      });

      return Resource.success(data: credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Resource.failed(error: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        return Resource.failed(
            error: 'The account already exists for that email.');
      } else {
        return Resource.failed(error: "Error, try again");
      }
    }
  }
}

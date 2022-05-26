import 'package:safesign_app/core/models/user_model_keys.dart';

class UserModel {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? pin;
  List<dynamic>? documentsToSign;
  List<dynamic>? pendingDocuments;
  List<dynamic>? availableDocuments;

  UserModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.pin,
    this.availableDocuments,
    this.pendingDocuments,
    this.documentsToSign,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map[UserModelKeys.id] ?? "",
      email: map[UserModelKeys.email] ?? "",
      lastName: map[UserModelKeys.lastName] ?? "",
      firstName: map[UserModelKeys.firstName] ?? "",
      pin: map[UserModelKeys.pin] ?? "",
      documentsToSign: map[UserModelKeys.documentsToSign] ?? [],
      pendingDocuments: map[UserModelKeys.pendingDocuments] ?? [],
      availableDocuments: map[UserModelKeys.availableDocuments] ?? [],
    );
  }

  Map<String, dynamic> toMap(UserModel user) {
    return {
      UserModelKeys.id: user.id,
      UserModelKeys.email: user.email,
      UserModelKeys.lastName: user.lastName,
      UserModelKeys.firstName: user.firstName,
      UserModelKeys.pin: user.pin,
      UserModelKeys.documentsToSign: user.documentsToSign,
      UserModelKeys.availableDocuments: user.availableDocuments,
      UserModelKeys.pendingDocuments: user.pendingDocuments,
    };
  }
}

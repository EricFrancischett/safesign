import 'package:safesign_app/core/models/doc_model_keys.dart';

class DocModel {
  String? id;
  String? ownerId;
  String? url;
  List<dynamic>? peopleInvolved;

  DocModel({
    this.id,
    this.ownerId,
    this.url,
    this.peopleInvolved,

  });

  factory DocModel.fromMap(Map<String, dynamic> map) {
    return DocModel(
      id: map[DocModelKeys.id] ?? "",
      ownerId: map[DocModelKeys.ownerId] ?? "",
      url: map[DocModelKeys.url] ?? "",
      peopleInvolved: map[DocModelKeys.peopleInvolved] ?? [],
    );
  }

  Map<String, dynamic> toMap(DocModel document) {
    return {
      DocModelKeys.id: document.id,
      DocModelKeys.ownerId: document.ownerId,
      DocModelKeys.url: document.url,
      DocModelKeys.peopleInvolved: document.peopleInvolved,
    };
  }
}

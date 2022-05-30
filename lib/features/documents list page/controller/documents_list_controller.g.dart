// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documents_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DocumentsListController on _DocumentsListControllerBase, Store {
  late final _$generalDocmentsListAtom = Atom(
      name: '_DocumentsListControllerBase.generalDocmentsList',
      context: context);

  @override
  ObservableList<dynamic> get generalDocmentsList {
    _$generalDocmentsListAtom.reportRead();
    return super.generalDocmentsList;
  }

  @override
  set generalDocmentsList(ObservableList<dynamic> value) {
    _$generalDocmentsListAtom.reportWrite(value, super.generalDocmentsList, () {
      super.generalDocmentsList = value;
    });
  }

  late final _$documentsToSignAtom = Atom(
      name: '_DocumentsListControllerBase.documentsToSign', context: context);

  @override
  ObservableList<dynamic> get documentsToSign {
    _$documentsToSignAtom.reportRead();
    return super.documentsToSign;
  }

  @override
  set documentsToSign(ObservableList<dynamic> value) {
    _$documentsToSignAtom.reportWrite(value, super.documentsToSign, () {
      super.documentsToSign = value;
    });
  }

  late final _$pendingDocumentsAtom = Atom(
      name: '_DocumentsListControllerBase.pendingDocuments', context: context);

  @override
  ObservableList<dynamic> get pendingDocuments {
    _$pendingDocumentsAtom.reportRead();
    return super.pendingDocuments;
  }

  @override
  set pendingDocuments(ObservableList<dynamic> value) {
    _$pendingDocumentsAtom.reportWrite(value, super.pendingDocuments, () {
      super.pendingDocuments = value;
    });
  }

  late final _$availableDocumentsAtom = Atom(
      name: '_DocumentsListControllerBase.availableDocuments',
      context: context);

  @override
  ObservableList<dynamic> get availableDocuments {
    _$availableDocumentsAtom.reportRead();
    return super.availableDocuments;
  }

  @override
  set availableDocuments(ObservableList<dynamic> value) {
    _$availableDocumentsAtom.reportWrite(value, super.availableDocuments, () {
      super.availableDocuments = value;
    });
  }

  late final _$fetchDocumentByStatusAsyncAction = AsyncAction(
      '_DocumentsListControllerBase.fetchDocumentByStatus',
      context: context);

  @override
  Future<void> fetchDocumentByStatus(String documentType) {
    return _$fetchDocumentByStatusAsyncAction
        .run(() => super.fetchDocumentByStatus(documentType));
  }

  @override
  String toString() {
    return '''
generalDocmentsList: ${generalDocmentsList},
documentsToSign: ${documentsToSign},
pendingDocuments: ${pendingDocuments},
availableDocuments: ${availableDocuments}
    ''';
  }
}

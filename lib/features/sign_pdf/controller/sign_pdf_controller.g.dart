// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_pdf_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignPdfController on _SignPdfControllerBase, Store {
  late final _$pathAtom =
      Atom(name: '_SignPdfControllerBase.path', context: context);

  @override
  String get path {
    _$pathAtom.reportRead();
    return super.path;
  }

  @override
  set path(String value) {
    _$pathAtom.reportWrite(value, super.path, () {
      super.path = value;
    });
  }

  late final _$signDocumentAsyncAction =
      AsyncAction('_SignPdfControllerBase.signDocument', context: context);

  @override
  Future<void> signDocument(String owner_id, String document_id) {
    return _$signDocumentAsyncAction
        .run(() => super.signDocument(owner_id, document_id));
  }

  late final _$_SignPdfControllerBaseActionController =
      ActionController(name: '_SignPdfControllerBase', context: context);

  @override
  void changeEmail(String newValue) {
    final _$actionInfo = _$_SignPdfControllerBaseActionController.startAction(
        name: '_SignPdfControllerBase.changeEmail');
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_SignPdfControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
path: ${path}
    ''';
  }
}

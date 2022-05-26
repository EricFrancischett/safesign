// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$documentstoSignLengthAtom =
      Atom(name: '_HomeControllerBase.documentstoSignLength', context: context);

  @override
  int get documentstoSignLength {
    _$documentstoSignLengthAtom.reportRead();
    return super.documentstoSignLength;
  }

  @override
  set documentstoSignLength(int value) {
    _$documentstoSignLengthAtom.reportWrite(value, super.documentstoSignLength,
        () {
      super.documentstoSignLength = value;
    });
  }

  late final _$pendingDocumentsLengthAtom = Atom(
      name: '_HomeControllerBase.pendingDocumentsLength', context: context);

  @override
  int get pendingDocumentsLength {
    _$pendingDocumentsLengthAtom.reportRead();
    return super.pendingDocumentsLength;
  }

  @override
  set pendingDocumentsLength(int value) {
    _$pendingDocumentsLengthAtom
        .reportWrite(value, super.pendingDocumentsLength, () {
      super.pendingDocumentsLength = value;
    });
  }

  late final _$availableDocumentsLengthAtom = Atom(
      name: '_HomeControllerBase.availableDocumentsLength', context: context);

  @override
  int get availableDocumentsLength {
    _$availableDocumentsLengthAtom.reportRead();
    return super.availableDocumentsLength;
  }

  @override
  set availableDocumentsLength(int value) {
    _$availableDocumentsLengthAtom
        .reportWrite(value, super.availableDocumentsLength, () {
      super.availableDocumentsLength = value;
    });
  }

  late final _$getDocumentstoSignLengthAsyncAction = AsyncAction(
      '_HomeControllerBase.getDocumentstoSignLength',
      context: context);

  @override
  Future<void> getDocumentstoSignLength() {
    return _$getDocumentstoSignLengthAsyncAction
        .run(() => super.getDocumentstoSignLength());
  }

  late final _$getPendingDocumentsLengthAsyncAction = AsyncAction(
      '_HomeControllerBase.getPendingDocumentsLength',
      context: context);

  @override
  Future<void> getPendingDocumentsLength() {
    return _$getPendingDocumentsLengthAsyncAction
        .run(() => super.getPendingDocumentsLength());
  }

  late final _$getAvailableDocumentsLengthAsyncAction = AsyncAction(
      '_HomeControllerBase.getAvailableDocumentsLength',
      context: context);

  @override
  Future<void> getAvailableDocumentsLength() {
    return _$getAvailableDocumentsLengthAsyncAction
        .run(() => super.getAvailableDocumentsLength());
  }

  @override
  String toString() {
    return '''
documentstoSignLength: ${documentstoSignLength},
pendingDocumentsLength: ${pendingDocumentsLength},
availableDocumentsLength: ${availableDocumentsLength}
    ''';
  }
}

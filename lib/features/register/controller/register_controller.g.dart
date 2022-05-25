// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<bool>? _$isFirstNameValidComputed;

  @override
  bool get isFirstNameValid => (_$isFirstNameValidComputed ??= Computed<bool>(
          () => super.isFirstNameValid,
          name: '_RegisterControllerBase.isFirstNameValid'))
      .value;
  Computed<bool>? _$isFirstLastValidComputed;

  @override
  bool get isFirstLastValid => (_$isFirstLastValidComputed ??= Computed<bool>(
          () => super.isFirstLastValid,
          name: '_RegisterControllerBase.isFirstLastValid'))
      .value;
  Computed<bool>? _$isIdValidComputed;

  @override
  bool get isIdValid =>
      (_$isIdValidComputed ??= Computed<bool>(() => super.isIdValid,
              name: '_RegisterControllerBase.isIdValid'))
          .value;
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_RegisterControllerBase.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_RegisterControllerBase.isPasswordValid'))
          .value;
  Computed<bool>? _$isPasswordConfirmationValidComputed;

  @override
  bool get isPasswordConfirmationValid =>
      (_$isPasswordConfirmationValidComputed ??= Computed<bool>(
              () => super.isPasswordConfirmationValid,
              name: '_RegisterControllerBase.isPasswordConfirmationValid'))
          .value;
  Computed<bool>? _$allCredentialIsValidComputed;

  @override
  bool get allCredentialIsValid => (_$allCredentialIsValidComputed ??=
          Computed<bool>(() => super.allCredentialIsValid,
              name: '_RegisterControllerBase.allCredentialIsValid'))
      .value;

  late final _$firstNameAtom =
      Atom(name: '_RegisterControllerBase.firstName', context: context);

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  late final _$lastNameAtom =
      Atom(name: '_RegisterControllerBase.lastName', context: context);

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$pinAtom =
      Atom(name: '_RegisterControllerBase.pin', context: context);

  @override
  String get pin {
    _$pinAtom.reportRead();
    return super.pin;
  }

  @override
  set pin(String value) {
    _$pinAtom.reportWrite(value, super.pin, () {
      super.pin = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_RegisterControllerBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_RegisterControllerBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$passwordConfirmationAtom = Atom(
      name: '_RegisterControllerBase.passwordConfirmation', context: context);

  @override
  String get passwordConfirmation {
    _$passwordConfirmationAtom.reportRead();
    return super.passwordConfirmation;
  }

  @override
  set passwordConfirmation(String value) {
    _$passwordConfirmationAtom.reportWrite(value, super.passwordConfirmation,
        () {
      super.passwordConfirmation = value;
    });
  }

  late final _$isButtonAtLoadingStatusAtom = Atom(
      name: '_RegisterControllerBase.isButtonAtLoadingStatus',
      context: context);

  @override
  bool get isButtonAtLoadingStatus {
    _$isButtonAtLoadingStatusAtom.reportRead();
    return super.isButtonAtLoadingStatus;
  }

  @override
  set isButtonAtLoadingStatus(bool value) {
    _$isButtonAtLoadingStatusAtom
        .reportWrite(value, super.isButtonAtLoadingStatus, () {
      super.isButtonAtLoadingStatus = value;
    });
  }

  late final _$registerUserAsyncAction =
      AsyncAction('_RegisterControllerBase.registerUser', context: context);

  @override
  Future<Resource<UserCredential, String>> registerUser() {
    return _$registerUserAsyncAction.run(() => super.registerUser());
  }

  late final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase', context: context);

  @override
  void changeFirstName(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeFirstName');
    try {
      return super.changeFirstName(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLastName(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeLastName');
    try {
      return super.changeLastName(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePin(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePin');
    try {
      return super.changePin(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changeEmail');
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePassword');
    try {
      return super.changePassword(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordConfirmation(String newValue) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.changePasswordConfirmation');
    try {
      return super.changePasswordConfirmation(newValue);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setButtonToLoadingStatus() {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setButtonToLoadingStatus');
    try {
      return super.setButtonToLoadingStatus();
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
lastName: ${lastName},
pin: ${pin},
email: ${email},
password: ${password},
passwordConfirmation: ${passwordConfirmation},
isButtonAtLoadingStatus: ${isButtonAtLoadingStatus},
isFirstNameValid: ${isFirstNameValid},
isFirstLastValid: ${isFirstLastValid},
isIdValid: ${isIdValid},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isPasswordConfirmationValid: ${isPasswordConfirmationValid},
allCredentialIsValid: ${allCredentialIsValid}
    ''';
  }
}

import 'package:mobx/mobx.dart';
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
  String id = '';
  @action
  void changeId(String newValue) => id = newValue;

  @computed
  bool get isIdValid => id.isNotEmpty && id.length == 4;

  @observable
  String email = '';

  @action
  void changeEmail(String newValue) => email = newValue;

  @computed
  bool get isEmailValid => email.contains('@') && email.contains('.com');
}

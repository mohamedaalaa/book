import 'package:book/core/utils/app_manager.dart';

extension ValidateEmail on String {
  bool get isEmailValid {
    return AppManager.mailReg.hasMatch(this);
  }
}

extension ValidatePhone on String {
  bool get isPhoneValid {
    return AppManager.phoneReg.hasMatch(this);
  }
}

extension ValidatePassword on String {
  bool get isPasswordValid {
    return AppManager.passwordReg.hasMatch(this);
  }
}

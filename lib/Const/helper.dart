class ValidationHelper {
  static bool validatNotEmptyString(String field) {
    return field.isNotEmpty;
  }

  static bool stringLength(String field, int length) {
    return field.length == length;
  }

  static bool validatListLength(List list, int length) {
    return list.length == length;
  }

  static bool validatPassord(String pass, int length) {
    return pass.length > length;
  }
}

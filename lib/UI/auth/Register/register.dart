class RegisterModel {
  String name;
  String email;
  String phone;
  String addrress;
  String password;
  String wallpepar;
  String avatar;
  List<int> tagsId;
  RegisterModel(
      {required this.name,
      required this.email,
      required this.addrress,
      required this.avatar,
      required this.password,
      required this.phone,
      required this.tagsId,
      required this.wallpepar});

  factory RegisterModel.empty() {
    return RegisterModel(
        name: '',
        email: '',
        addrress: '',
        avatar: '',
        password: '',
        phone: '',
        tagsId: [],
        wallpepar: '');
  }
  RegisterModel copyWith(
      {String? name,
      String? email,
      String? addrress,
      String? avatar,
      String? password,
      String? phone,
      List<int>? tagsId,
      String? wallpepar}) {
    return RegisterModel(
        name: name ?? this.name,
        email: email ?? this.email,
        addrress: addrress ?? this.addrress,
        avatar: avatar ?? this.avatar,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        tagsId: tagsId ?? this.tagsId,
        wallpepar: wallpepar ?? this.wallpepar);
  }
}

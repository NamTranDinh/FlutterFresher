class AccountModel {
  late final String userName;
  late final String password;
  late final String fullName;
  late final String avatar;
  late final String type;
  late final String status;

  AccountModel({
    required this.userName,
    required this.password,
    required this.fullName,
    required this.avatar,
    required this.type,
    required this.status,
  });

  AccountModel.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    password = json['password'];
    fullName = json['full_name'];
    avatar = json['avatar'];
    type = json['type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_name'] = userName;
    _data['password'] = password;
    _data['full_name'] = fullName;
    _data['avatar'] = avatar;
    _data['type'] = type;
    _data['status'] = status;
    return _data;
  }
}

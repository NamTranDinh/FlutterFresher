class AccountModel {
  String? userName;
  String? password;
  String? fullName;
  String? avatar;
  String? type;
  String? status;

  AccountModel(
      {this.userName,
        this.password,
        this.fullName,
        this.avatar,
        this.type,
        this.status});

  AccountModel.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    password = json['password'];
    fullName = json['full_name'];
    avatar = json['avatar'];
    type = json['type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['password'] = this.password;
    data['full_name'] = this.fullName;
    data['avatar'] = this.avatar;
    data['type'] = this.type;
    data['status'] = this.status;
    return data;
  }
}

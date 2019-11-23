class UserModel {
  int id;
  String name;
  String username;
  UserModel({this.id, this.name, this.username});

  UserModel.initial()
      : id = 0,
        name = '',
        username = '';

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    return data;
  }
}

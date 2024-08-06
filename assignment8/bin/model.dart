
class Info {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Map<String, dynamic> children;

  Info({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.children,
  });

  factory Info.fromjson(Map<String, dynamic> json) {
    return Info(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        children: json["children"]);
  }

  Map<String, dynamic> tojison() {
    Map<String, dynamic> map = {};
    map["_id"] = id;
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["email"] = email;
    map["children"] = children;
    return map;
  }
}

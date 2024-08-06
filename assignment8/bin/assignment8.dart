import 'dataSet.dart';

void main() {
  List<Info> storeInfo = [];

  void printAllData() {
    for (var element in listData) {
      Info object1 = Info.fromjson(element);
      storeInfo.add(object1);
    }
    for (var element in storeInfo) {
      print(element.tojison());
    }
  }

  // void printName(String firstName) {
  //   for (var element in listData) {
  //     Info object1 = Info.fromjson(element);
  //     storeInfo.add(object1);
  //   }
  //   for (var element in storeInfo) {
  //     if (element.firstName == firstName) {
  //       print(element.tojison());
  //     }
  //   }
  // }

  // void printEmail(String email) {
  //   for (var element in listData) {
  //     Info object1 = Info.fromjson(element);
  //     storeInfo.add(object1);
  //   }
  //   for (var element in storeInfo) {
  //     if (element.email == email) {
  //       print(element.tojison());
  //     }
  //   }
  // }

   printAllData();
  // print("----------> print by name <----------");
  // printName("Blankenship");
  // print("----------> print by email <----------");
  // printEmail("frederickstuart@rocklogic.com");
// void printAllUsers() {
//   for (Info user in storeInfo) {
//     print(jsonEncode(user.toJson()));
//   }
// }

  print("-------------------------");
}

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

// class User {
//   final int id;
//   final String email;
//   final String name;
//   final String username;
//   final Map<String, dynamic> address;

//   User(
//       {required this.id,
//       required this.email,
//       required this.name,
//       required this.username,
//       required this.address});

//   factory User.fromjson(Map<String, dynamic> json) {
//     return User(
//         id: json["_id"],
//         email: json["email"],
//         name: json["name"],
//         username: json["username"],
//         address: json["address"]);
//   }

//   Map<String, dynamic> tojison() {
//     Map<String, dynamic> map = {};
//     map["id"] = id;
//     map["name"] = name;
//     map["email"] = email;
//     map["username"] = username;
//     map["address"] = address;
//     return map;
//   }
// }

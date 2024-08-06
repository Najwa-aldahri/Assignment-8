import 'dataSet.dart';
import 'model.dart';

void main() {
  print("\n--------------------> print all user data <-------------------\n");
  printAllData();
  print("-------------------> print by name <------------------");
  printName("Blankenship");
  print("------------------> print by email <------------------");
  printEmail("frederickstuart@rocklogic.com");
  printChieldName("Blankenship");
  print("-------------------------------------------------------------------");
}

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

  void printName(String firstName) {
    for (var element in listData) {
      Info object1 = Info.fromjson(element);
      storeInfo.add(object1);
    }
    for (var element in storeInfo) {
      if (element.firstName == firstName) {
        print(element.tojison());
      }
    }
  }

  void printEmail(String email) {
    for (var element in listData) {
      Info object1 = Info.fromjson(element);
      storeInfo.add(object1);
    }
    for (var element in storeInfo) {
      if (element.email == email) {
        print(element.tojison());
      }
    }
  }

  void printChieldName(String firstName) {
    for (var element in listData) {
      Info object1 = Info.fromjson(element);
      storeInfo.add(object1);
    }
    for (var element in storeInfo) {
      if (element.firstName == firstName) {
        print(element.children);
      }
    }
  }

import 'package:isar/isar.dart';


part 'User.g.dart';
@collection
class User{
  Id id=Isar.autoIncrement;
  String? name;
  String? email;
  String? phone;
  String? avatar;
  List<Record>? records;
  User({this.name, this.email, this.phone, this.avatar, this.records});
}

@embedded
class Record{
  int? id;
  String? path;
  DateTime? createTime;
}


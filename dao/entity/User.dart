
import 'package:isar/isar.dart';
import 'Record.dart';
import 'Note.dart';
part 'User.g.dart';
@collection
class User{
  Id id;
  String name;
  String email;
  bool gender;
  String avatar;
  int age;
  int role;
  int goal;

  final records = IsarLinks<Record>();
  final notes = IsarLinks<Note>();
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.avatar,
    required this.age,
    required this.role,
    required this.goal,
});
}



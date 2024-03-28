
import 'package:isar/isar.dart';
import 'Record.dart';
import 'Note.dart';
part 'User.g.dart';
@collection
class User{
  Id? id;
  String? name;
  String? email;
  String? gender;
  String? avatar;
  String? age;
  String? role;
  String? goal;

  final records = IsarLinks<Record>();
  final notes = IsarLinks<Note>();
  User({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.avatar,
    this.age,
    this.role,
    this.goal,
});
}



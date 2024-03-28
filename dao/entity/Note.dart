
import 'package:isar/isar.dart';
part  'Note.g.dart';
@collection
class Note {
  Id id;
  int userId;
  String path;
  DateTime createTime;
  Note({
    required this.id,
    required this.userId,
    required this.path,
    required this.createTime,
  });
}
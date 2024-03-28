
import 'package:isar/isar.dart';
part  'Note.g.dart';
@collection
class Note {
  Id? id;
  int? userId;
  String? path;
  DateTime? createTime;
  Note({
    this.id,
    this.userId,
    this.path,
    this.createTime,
  });
}
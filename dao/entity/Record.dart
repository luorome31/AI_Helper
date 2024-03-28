import 'package:isar/isar.dart';
part 'Record.g.dart';

@collection
class Record{
  Id id;
  int userId;
  String path;
  DateTime createTime;
  Record({
    required this.id,
    required this.userId,
    required this.path,
    required this.createTime,
  });
}
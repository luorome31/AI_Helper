import 'package:isar/isar.dart';
part 'Record.g.dart';

@collection
class Record{
  Id? id;
  int? userId;
  String? path;
  DateTime? createTime;
  Record({
    this.id,
    this.userId,
    this.path,
    this.createTime,
  });
}
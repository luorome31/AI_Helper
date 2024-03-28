import 'dart:io';

import 'package:easy_cse/dao/entity/Login.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'entity/Note.dart';
import 'entity/Record.dart';
import 'entity/User.dart';

class BaseDao{
  static late Isar db;
  static final rootDir = path.join(Directory.current.path, '.dart_tool', 'isar');

  static init() async{
    await Directory(rootDir ).create(recursive: true);
    // final dir = await getApplicationDocumentsDirectory();
    db = await Isar.open(
      [UserSchema, RecordSchema, NoteSchema, LoginSchema],
      directory: rootDir,
      inspector: true,
    );
  }
   static Future<void> insertLoginId(int loginId) async {
    final login = Login(isLogin: loginId);
    await db.writeTxn(() => db.logins.put(login));
  }
   static Future<Login> getLoginId() async {
    return db.logins.where().findAll().then((value) => value.first);
  }
   static Future<void> insertUser(User user) async {
    await db.writeTxn(() => db.users.put(user));
  }
  static Future<User?> getUserById(int id) async {
    return db.users.where().filter().idEqualTo(id).findFirst();
  }


   static Future<void> insertRecord(int userId, Record record) async {
    final user = await db.users.where().filter().idEqualTo(userId).findFirst();
    await db.writeTxn(()async{
      await db.records.put(record);
      user?.records?.add(record);
      await user?.records.save();
    });
  }

   static Future<void> insertNote(int userId, Note note) async {
     final user = await db.users.where().filter().idEqualTo(userId).findFirst();

     await db.writeTxn(()async{
       await db.notes.put(note);
       user?.notes?.add(note);
       await user?.notes.save();
     });

   }
  static Future<List<Record>> getRecordsByUserId(int userId) async {
    return db.records.where().filter().userIdEqualTo(userId).findAll();
  }
  static Future<List<Note>> getNotesByUserId(int userId) async {
    return db.notes.where().filter().userIdEqualTo(userId).findAll();
  }


}
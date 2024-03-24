

import 'package:easy_cse/dao/entity/Login.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'entity/User.dart';


class IsarDaoImpl{
  late Future<Isar> db;
  UserDaoImpl(){
    db = openIsar();
  }

  Future<Isar> openIsar() async {
    if(Isar.instanceNames.isEmpty){
      final dir = await getApplicationDocumentsDirectory();
         return await Isar.open(
        [
          UserSchema,
          LoginSchema,
        ],
          inspector: true,
          directory: dir.path,
        );
    }
    return Future.value(Isar.getInstance());
  }


  Future<void> insertLoginId(int loginId) async {
    final login = Login(isLogin: loginId);
    final isar = await db;
    await isar.writeTxnSync(() => isar.logins.put(login));
  }

  Future<Login> getLoginId() async {
    final isar = await db;
    return isar.logins.where().findAll().then((value) => value.first);
  }

  Future<void> insertUser(User user) async {
    final isar = await db;
    await isar.writeTxnSync(() => isar.users.put(user));
  }

  Future<void> updateUser(User user) async {
    final isar = await db;
    await isar.writeTxnSync(() => isar.users.put(user));
  }

  Future<void> insertRecord(int userId, Record record) async {
    final isar = await db;
    final user = await isar.users.where().filter().idEqualTo(userId).findFirst();
    user?.records?.add(record);
    await isar.writeTxnSync(() => isar.users.put(user!));
  }

  Future<void> deleteRecord(int userId, int recordId) async {
    final isar = await db;
    final user = await isar.users.where().filter().idEqualTo(userId).findFirst();
    user?.records?.removeAt(recordId);
    await isar.writeTxnSync(() => isar.users.put(user!));
  }




}

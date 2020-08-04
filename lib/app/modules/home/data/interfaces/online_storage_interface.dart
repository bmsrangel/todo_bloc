import 'local_storage_interface.dart';

abstract class IOnlineStorage extends ILocalStorage {
  getUser(user);
  insertUser(user);
  updateUser(user);
  deleteUser(user);
}
import 'package:tarea2u2/models/user_controller.dart';
import 'package:tarea2u2/services/db_services.dart';

class UserController {
  final DbService _dbService = DbService();

  Future<List<User>> getAllUsers() async {
    return await _dbService.getUsers();
  }

  Future<void> addUser(User user) async {
    await _dbService.insertUser(user);
  }

  Future<void> updateUser(User user) async {
    await _dbService.updateUser(user);
  }

  Future<void> deleteUser(int id) async {
    await _dbService.deleteUser(id);
  }
}

import 'package:state_managers_review/mobx/data/models/user.dart';

abstract class IUserRepository {
  Future<User> login({
    required String name,
    required String pass,
  });
}

class UserRepository implements IUserRepository {
  @override
  Future<User> login({
    required String name,
    required String pass,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return User(
      name: name,
      pass: pass,
    );
  }
}

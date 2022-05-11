import 'package:mobx/mobx.dart';
import 'package:state_managers_review/mobx/data/models/user.dart';
import 'package:state_managers_review/mobx/data/repositories/user_repository.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  final UserRepository userRepository;

  @observable
  ObservableFuture<User?> user = ObservableFuture.value(null);

  _LoginStore(this.userRepository);

  @action
  Future<void> login({
    required String name,
    required String pass,
  }) async {
    user = ObservableFuture.value(
      await userRepository.login(
        name: name,
        pass: pass,
      ),
    );
  }

  @action
  Future<void> logout() async {
    user = ObservableFuture.value(
      null,
    );
  }
}

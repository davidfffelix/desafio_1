import '../model/user_model.dart';
import '../repository/user_repository.dart';

class HomeController {
  final IUserRepository repository; // Depender via contrato

  UserModel? user;

  HomeController(this.repository);
  Future<void> start() async {
    final response = await repository.fetch();
    user = response;
  }
}

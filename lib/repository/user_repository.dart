import '../http_client/http_client.dart';
import '../model/user_model.dart';

abstract class IUserRepository {
  Future<UserModel> fetch(); // Assinatura do método
}

class UserRepository implements IUserRepository {
  final IHttpClient httpClient;

  UserRepository(this.httpClient);

  @override
  Future<UserModel> fetch() async {
    // UserModel = Não foi tipado por que é um só objeto
    final result = await httpClient.get();

    return UserModel.fromMap(result);
  }
}

import 'package:desafio_1/controllers/home_controller.dart';
import 'package:desafio_1/repository/user_repository.dart';
import 'package:dio/dio.dart';
import 'data_source/data_source.dart';

void main() async {
  HomeController controller = HomeController(UserRepository(DataSource(Dio())));

  await controller.start();
  print(controller.user);
}

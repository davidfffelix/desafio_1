import 'package:desafio_1/http_client/http_client.dart';
import 'package:dio/dio.dart';

class DataSource implements IHttpClient {
  final Dio dio;

  const DataSource(this.dio);
  final url = ('https://api.github.com/users/Flutterando');

  @override
  Future<Map<String, dynamic>> get() async {
    final response = await dio.get(url);
    final listResponse = response.data as Map<String, dynamic>; // Casting

    return listResponse;
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_dio/models/login_model.dart';

class Repository {
  // static Repository? _instance;
  // Avoid self instance
  // Repository._();
  // static Repository get instance => _instance ??= Repository._();

  static const String baseUrl = "https://api.escuelajs.co/api/v1";

  Future<LoginModel> Userlogin(Object reqeustbody) async {
    try {
      final response = await Dio().post(
        "$baseUrl/auth/login",
        data: reqeustbody,
      );
      return LoginModel.fromJson(response.data);
    } catch (e) {
      throw Exception("failed to login");
    }
  }
}

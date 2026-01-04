import 'package:bloc_clean_architecture/config/app_url.dart';
import 'package:bloc_clean_architecture/data/network/network_api_service.dart';
import 'package:bloc_clean_architecture/model/user_model.dart';

class LoginRepository {
  final _api = NetworkApiService();

  Future<UserModel> loginAPi(dynamic data) async {
    final response = await _api.postApi(AppUrl.loginUrl, data);
    return UserModel.fromJson(response);
  }
}

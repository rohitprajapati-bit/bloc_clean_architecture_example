import 'package:bloc_clean_architecture/config/app_url.dart';
import 'package:bloc_clean_architecture/data/network/network_api_service.dart';
import 'package:bloc_clean_architecture/model/user/user_model.dart';

import 'login_repository.dart';

class LoginHttpApiRepository implements LoginRepository {
  final _api = NetworkApiService();

  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrl.loginUrl, data);
    return UserModel.fromJson(response);
  }
}

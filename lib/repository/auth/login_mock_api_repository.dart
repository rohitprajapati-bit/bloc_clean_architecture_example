import 'package:bloc_clean_architecture/model/user/user_model.dart';

import 'login_repository.dart';

class LoginMockApiRepository implements LoginRepository {
  @override
  Future<UserModel> loginApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 5));
    final response = {'token': "Token jvhjb"};
    return UserModel.fromJson(response);
  }
}

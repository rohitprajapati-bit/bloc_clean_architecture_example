import 'package:bloc_clean_architecture/model/user_model.dart';

abstract class LoginRepository {
  Future<UserModel> loginApi(dynamic data);
}

import '../../model/login/login_response.dart';

Future<LoginResponse> login(String username, String password) async {
  return Future.delayed(const Duration(milliseconds: 2000), () {
    if (username.isEmpty || password.isEmpty) {
      Error error = new Error();
      return Future.error(error);
    } else {
      LoginResponse response = new LoginResponse(userId: 0, userName: "Redux example");
      return response;
    }
  });
}
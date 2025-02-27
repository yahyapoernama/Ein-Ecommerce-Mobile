import '../../services/api_service.dart';
import '../models/user_model.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<void> register(UserModel userModel) async {
    try {
      await _apiService.register(userModel);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> login(UserModel userModel) async {
    try {
      await _apiService.login(userModel);
    } catch (e) {
      rethrow;
    }
  }
}
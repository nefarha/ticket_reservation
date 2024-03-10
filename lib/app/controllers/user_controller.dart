import 'package:get/get.dart';
import 'package:reza_reservation/app/controllers/auth_controller.dart';
import 'package:reza_reservation/app/data/model/user/repo/user_repo.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final authC = AuthController.instance;
  final accountRepo = UserRepo();

  Rxn<UserModel> user = Rxn();
}

import 'package:dio/dio.dart';
import 'package:reza_reservation/app/data/model/base_response/base_response.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';

class DioService {
  final dio = Dio(
    BaseOptions(baseUrl: 'http://10.0.2.2:3000'),
  );
  final userUrl = '/users';
  final adminUrl = '/admins';
  final pesananUrl = '/pesanans';
  final rekeningUrl = '/rekenings';
  final wisataUrl = '/wisatas';

  // Admins
  Future<BaseResponse> SignInAdmin({
    required String email,
    required String password,
  }) async {
    var url = "/sign_in_admin";
    var response = await dio.get(
      url,
      queryParameters: {
        "email": email,
        "password": password,
      },
    );

    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  Future<BaseResponse> SignUpAdmin({
    required UserModel model,
  }) async {
    var response = await dio.post(adminUrl, data: model.toJson());

    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  // Users
  Future<BaseResponse?> SignInUser({
    required String email,
    required String password,
  }) async {
    var url = "/sign_in_user";
    var response = await dio.get(
      url,
      queryParameters: {
        "email": email,
        "password": password,
      },
    );
    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  Future<BaseResponse> SignUpUser({
    required UserModel model,
  }) async {
    var response = await dio.post(userUrl, data: model.toJson());

    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  // Rekenings
  Future<BaseResponse> CreateRekening({
    required RekeningModel model,
  }) async {
    var response = await dio.post(rekeningUrl, data: model.toJson());

    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  Future<List<RekeningModel>> ReadRekening() async {
    var response = await dio.get(rekeningUrl);

    final baseResponse = BaseResponse.fromJson(response.data);
    if (baseResponse.status == 201) {
      var list = baseResponse.data as List;

      List<RekeningModel> daftarRekening =
          list.map((e) => RekeningModel.fromJson(e)).toList();

      return daftarRekening;
    } else {
      return [];
    }
  }

  Future deleteRekening({required int id}) async {
    await dio.delete(
      '$rekeningUrl/$id',
    );
  }
}

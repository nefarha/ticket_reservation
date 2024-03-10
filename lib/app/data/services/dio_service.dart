import 'package:dio/dio.dart';
import 'package:reza_reservation/app/data/model/base_response/base_response.dart';
import 'package:reza_reservation/app/data/model/pesanan/pesanan_model.dart';
import 'package:reza_reservation/app/data/model/pesanan/viewModel/pesanan_view_model.dart';
import 'package:reza_reservation/app/data/model/rekening/rekening_model.dart';
import 'package:reza_reservation/app/data/model/user/user_model.dart';
import 'package:reza_reservation/app/data/model/wisata/wisata_model.dart';

class DioService {
  final dio = Dio(
    BaseOptions(baseUrl: 'http://10.0.2.2:3000'),
  );
  final userUrl = '/users';
  final adminUrl = '/admins';
  final pesananUrl = '/pesanans';
  final rekeningUrl = '/rekenings';
  final wisataUrl = '/wisata';

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
    if (baseResponse.status == 200) {
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

  // Wisata
  Future<BaseResponse> CreateWisata({
    required WisataModel model,
  }) async {
    var response = await dio.post(wisataUrl, data: model.toJson());

    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  Future<List<WisataModel>> ReadWisata() async {
    var response = await dio.get(wisataUrl);

    final baseResponse = BaseResponse.fromJson(response.data);
    if (baseResponse.status == 200) {
      var list = baseResponse.data as List;
      print(list);

      List<WisataModel> daftarWisata =
          list.map((e) => WisataModel.fromJson(e)).toList();

      return daftarWisata;
    } else {
      return [];
    }
  }

  Future deleteWisata({required int id}) async {
    await dio.delete(
      '$wisataUrl/$id',
    );
  }

  // Pesanan
  Future<BaseResponse> CreatePesanan({
    required PesananModel model,
  }) async {
    var response = await dio.post(pesananUrl, data: model.toJson());

    final baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

  Future<List<PesananModel>> ReadPesanan({required String accountType}) async {
    var response = await dio.get(pesananUrl, queryParameters: {
      "creator": accountType,
    });

    final baseResponse = BaseResponse.fromJson(response.data);
    if (baseResponse.status == 200) {
      var list = baseResponse.data as List;

      List<PesananModel> daftarRekening =
          list.map((e) => PesananModel.fromJson(e)).toList();

      return daftarRekening;
    } else {
      return [];
    }
  }

  Future<PesananViewModel?> showPesanan({required int id}) async {
    var response = await dio.get("$pesananUrl/$id");

    final baseResponse = BaseResponse.fromJson(response.data);
    if (baseResponse.status == 200) {
      return PesananViewModel.fromJson(baseResponse.data);
    } else {
      return null;
    }
  }

  Future updatePesanan({required int id, required String newStatus}) async {
    var response =
        await dio.put("$pesananUrl/$id", data: {'status': newStatus});
  }
}

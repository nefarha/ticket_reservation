class BaseResponse {
  final dynamic data;
  final int status;

  BaseResponse({required this.data, required this.status});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      BaseResponse(data: json['data'], status: json['status']);
}

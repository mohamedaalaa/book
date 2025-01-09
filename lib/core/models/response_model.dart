import 'response.dart';

class ResponseModel<T> extends Response<T> {
  const ResponseModel({super.state, super.message, super.entity});

  factory ResponseModel.fromJson(Map<String, dynamic> json, {T? object}) =>
      ResponseModel<T>(
        state: json['state'],
        message: json['message'],
        entity: object ?? json['entity'],
      );

  factory ResponseModel.fromResponse(Response response) => ResponseModel<T>(
        state: response.state,
        message: response.message,
        entity: response.entity,
      );

  Map<String, dynamic> toJson() => {
        'state': state,
        'message': message,
        'entity': entity,
      };
}

import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseModel<T, E> {
  final T data;
  final E error;

  const BaseResponseModel({required this.data, required this.error});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT,
          E Function(Object? json) fromJsonE) =>
      _$BaseResponseModelFromJson(json, fromJsonT, fromJsonE);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT,
      Map<String, dynamic> Function(E value) toJsonE) {
    return _$BaseResponseModelToJson<T, E>(this, toJsonT, toJsonE);
  }
}

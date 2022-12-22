// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T, E> _$BaseResponseModelFromJson<T, E>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  E Function(Object? json) fromJsonE,
) =>
    BaseResponseModel<T, E>(
      data: fromJsonT(json['data']),
      error: fromJsonE(json['error']),
    );

Map<String, dynamic> _$BaseResponseModelToJson<T, E>(
  BaseResponseModel<T, E> instance,
  Object? Function(T value) toJsonT,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'error': toJsonE(instance.error),
    };

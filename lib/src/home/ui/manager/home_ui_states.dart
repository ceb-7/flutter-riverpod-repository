import 'package:flutter_repository_riverpod/src/home/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_states.freezed.dart';

@freezed
class HomeUiStates with _$HomeUiStates {
  const factory HomeUiStates({
    required List<UserModel> users,
    required bool isLoading,
    required String error,
  }) = _HomeUiStates;
}

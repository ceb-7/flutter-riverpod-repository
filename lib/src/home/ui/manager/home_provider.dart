import 'package:flutter_repository_riverpod/src/home/data/repositories/user_repository.dart';
import 'package:flutter_repository_riverpod/src/home/ui/manager/home_ui_states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNotifier extends StateNotifier<HomeUiStates> {
  final UserRepository _userRepository;

  HomeNotifier({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const HomeUiStates(users: [], isLoading: false, error: ''));

  Future<void> fetchUsers() async {
    try {
      state = state.copyWith(isLoading: true);
      final users = await _userRepository.fetchUsers();
      state = state.copyWith(users: users, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: 'Some thing went wrong!', isLoading: false);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_repository_riverpod/src/home/di.dart';
import 'package:flutter_repository_riverpod/src/home/ui/presentation/widgets/item_user_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListUserWidget extends ConsumerWidget {
  const ListUserWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(homeNotifierProvider).users;

    return ListView.separated(
        itemBuilder: (context, index) => ItemUserWidget(user: users[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: users.length);
  }
}

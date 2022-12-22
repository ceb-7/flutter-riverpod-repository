import 'package:flutter/material.dart';
import 'package:flutter_repository_riverpod/src/home/data/models/user_model.dart';

class ItemUserWidget extends StatelessWidget {
  final UserModel user;

  const ItemUserWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        user.username,
        style: const TextStyle(color: Colors.black),
      ),
      Text(user.email),
    ]);
  }
}

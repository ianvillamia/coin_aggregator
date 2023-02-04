import 'package:dice_bear/dice_bear.dart';
import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    final _avatar = DiceBearBuilder.withRandomSeed().build();
    return CircleAvatar(
      child: _avatar.toImage(),
    );
  }
}

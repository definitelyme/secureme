library user;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secureme/features/core/domain/entities/fields/fields.dart';
import 'package:secureme/features/core/domain/entities/role/role.dart';
import 'package:secureme/features/core/domain/entities/unique_id.dart';
import 'package:secureme/utils/utils.dart';

import 'auth_provider.dart';

part 'user.freezed.dart';

@freezed
@immutable
class User with _$User {
  const factory User({
    UniqueId<int>? id,
    Role? role,
    DisplayName? displayName,
    EmailAddress? email,
    bool? isEmailVerified,
    AuthProvider? provider,
    Phone? phone,
    String? photo,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  factory User.guest() => User(
        id: UniqueId.fromExternal(45),
        displayName: DisplayName('Guest User'),
        email: EmailAddress('name@email.com'),
        isEmailVerified: false,
        phone: Phone('8100000002', Country.NG),
        photo: AppAssets.user,
        createdAt: App.today,
      );
}

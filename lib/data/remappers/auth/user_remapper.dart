import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/dto/auth/user_dto.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';

@injectable
class UserRemapper {
  UserDto toNetworkDto(UserEntity user) {
    return UserDto(
      id: user.id,
      username: user.username,
      image: user.image,
      email: user.email,
      accessToken: user.accessToken,
      refreshToken: user.refreshToken,
      gender: user.gender,
      firstName: user.firstName,
      lastName: user.lastName,
    );
  }

  UserEntity fromNetworkDto(UserDto user) {
    return UserEntity(
      id: user.id,
      gender: user.gender,
      firstName: user.firstName,
      lastName: user.lastName,
      username: user.username,
      image: user.image,
      email: user.email,
      accessToken: user.accessToken,
      refreshToken: user.refreshToken,
    );
  }
}

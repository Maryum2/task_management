import 'package:injectable/injectable.dart';
import 'package:task_manager_app/data/dto/auth/user_dto.dart';
import 'package:task_manager_app/domain/entities/auth/user_entity.dart';

@injectable
class UserLoginRemapper {
  UserEntity fromNetworkDto(
    UserDto? responseDto,
  ) {
    return UserEntity(
      id: responseDto!.id,
      username: responseDto.username,
      email: responseDto.email,
      firstName: responseDto.firstName,
      lastName: responseDto.lastName,
      gender: responseDto.gender,
      image: responseDto.image,
      refreshToken: responseDto.refreshToken,
      accessToken: responseDto.accessToken,
    );
  }
}

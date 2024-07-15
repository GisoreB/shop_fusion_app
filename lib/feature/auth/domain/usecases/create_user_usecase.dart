import '../entities/user_credentail_entity.dart';
import '../repositories/auth_repository.dart';
import 'package:flutter/material.dart';

class CreateUserUsecase {
  final AuthRepository repository;
  CreateUserUsecase({required this.repository});
  Future<String> createuserUsecase(UserCredentialEntity userCredentialEntity,BuildContext context) async {
    return repository.createUser(userCredentialEntity,context);
  }
}
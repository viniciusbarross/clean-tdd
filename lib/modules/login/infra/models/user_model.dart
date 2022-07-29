import 'package:cleantdd/modules/login/domain/entities/user.dart';

class UserModel extends User {
  UserModel({int? id, String? nome, String? email, bool? primeiroAcesso})
      : super(id, nome, email, primeiroAcesso);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        nome: json['nome'],
        email: json['email'],
        primeiroAcesso: json['primeiroAcesso']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'primeiroAcesso': primeiroAcesso,
    };
  }
}

import 'package:flutter/material.dart';
class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final dynamic passWord;
  UserModel({required this.id, required this.firstName, required this.lastName, required this.email, this.passWord});
}
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  Failure({required this.message});
  @override
  String toString() => message;
}

class NetworkFailure extends Failure {
  NetworkFailure() : super(message: "");

  @override
  List<Object> get props => [];
}

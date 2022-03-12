import 'package:dartz/dartz.dart';
import 'package:joao_parking/core/error/failures.dart';
import 'package:joao_parking/modules/home/domain/entities/create_customer_entity.dart';

abstract class CreateCustomerRepository {
  Future<Either<Failure, CustomerEntity>> createCustomer({required CustomerEntity createCustomer});
}

import 'package:joao_parking/modules/home/domain/entities/create_customer_entity.dart';
import 'package:joao_parking/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:joao_parking/modules/home/domain/repositories/create_customer_repository.dart';

class CreateCustomerRepositoryImpl implements CreateCustomerRepository {
  @override
  Future<Either<Failure, CustomerEntity>> createCustomer({
    required CustomerEntity createCustomer,
  }) {
    // TODO: implement createCustomer
    throw UnimplementedError();
  }
}

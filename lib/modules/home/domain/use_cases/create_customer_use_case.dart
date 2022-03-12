import 'package:equatable/equatable.dart';
import 'package:joao_parking/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:joao_parking/core/usecases/usecases.dart';
import 'package:joao_parking/modules/home/domain/entities/create_customer_entity.dart';
import 'package:joao_parking/modules/home/domain/repositories/create_customer_repository.dart';

class CreateCustomerUseCase implements UseCase<CustomerEntity, Params> {
  final CreateCustomerRepository customerRepository;

  CreateCustomerUseCase(this.customerRepository);

  @override
  Future<Either<Failure, CustomerEntity>> call(Params params) async {
    return await customerRepository.createCustomer(createCustomer: params.createCustomer);
  }
}

class Params extends Equatable {
  final CustomerEntity createCustomer;

  Params({required this.createCustomer});

  @override
  List<Object?> get props => [createCustomer];
}

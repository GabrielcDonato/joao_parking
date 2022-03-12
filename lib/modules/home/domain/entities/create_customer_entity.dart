import 'package:equatable/equatable.dart';
import 'package:joao_parking/core/utils/data_time_format.dart';

class CustomerEntity extends Equatable {
  final int? parkedIn;
  final String? parkingName;
  final String? carModel;
  final String? carColor;
  final String? cpf;
  final String? plate;
  final DateTime? checkIn;
  final DateTime? checkOut;

  const CustomerEntity({
    required this.parkedIn,
    required this.parkingName,
    required this.carModel,
    required this.carColor,
    required this.cpf,
    required this.plate,
    required this.checkIn,
    required this.checkOut,
  });

  CustomerEntity copyWith({
    int? parkedIn,
    String? parkingName,
    String? carModel,
    String? carColor,
    String? cpf,
    String? plate,
    DateTime? checkIn,
    DateTime? checkOut,
  }) {
    return CustomerEntity(
      parkedIn: parkedIn ?? this.parkedIn,
      parkingName: parkingName ?? this.parkingName,
      carModel: carModel ?? this.carModel,
      carColor: carColor ?? this.carColor,
      cpf: cpf ?? this.cpf,
      plate: plate ?? this.plate,
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut ?? this.checkOut,
    );
  }

  @override
  List<Object?> get props => [
        parkedIn!,
        parkingName!,
        carModel!,
        carColor!,
        cpf!,
        plate!,
        checkIn!,
        checkOut!,
      ];
}

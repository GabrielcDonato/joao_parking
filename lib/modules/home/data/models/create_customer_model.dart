import 'dart:convert';

import 'package:joao_parking/core/utils/data_time_format.dart';
import 'package:joao_parking/modules/home/domain/entities/create_customer_entity.dart';

class CustomerModel extends CustomerEntity {
  CustomerModel({
    required int parkedIn,
    required String parkingName,
    required String carModel,
    required String carColor,
    required String cpf,
    required String plate,
    required DateTime checkIn,
    required DateTime checkOut,
  }) : super(
          parkedIn: parkedIn,
          parkingName: parkingName,
          carModel: carModel,
          carColor: carColor,
          cpf: cpf,
          plate: plate,
          checkIn: checkIn,
          checkOut: checkOut,
        );

  Map<String, dynamic> toJson() {
    return {
      'parkedIn': parkedIn,
      'parkingName': parkingName,
      'carModel': carModel,
      'carColor': carColor,
      'cpf': cpf,
      'plate': plate,
      'checkIn': dateTimeFormatToString(checkIn!),
      'checkOut': checkOut == null ? null : dateTimeFormatToString(checkOut!),
    };
  }

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      parkedIn: json['parkedIn'],
      parkingName: json['parkingName'],
      carModel: json['carModel'],
      carColor: json['carColor'],
      cpf: json['cpf'],
      plate: json['plate'],
      checkIn: json['checkIn'],
      checkOut: json['checkOut'],
    );
  }

  static String? encode(List<CustomerModel> customer) {
    try {
      return json.encode(
        customer.map<Map<dynamic, dynamic>>((customer) => customer.toJson()).toList(),
      );
    } catch (e) {
      return '';
    }
  }

  static Map<String, dynamic> makeMap(CustomerModel customer) {
    var map = {
      'parkedIn': customer.parkedIn,
      'parkingName': customer.parkingName,
      'carModel': customer.carModel,
      'carColor': customer.carColor,
      'cpf': customer.cpf,
      'plate': customer.plate,
      'checkIn': customer.checkIn,
      'checkOut': customer.checkOut == null ? null : dateTimeFormatToString(customer.checkOut!)
    };
    return map;
  }

  static List<CustomerModel>? decode(String customer) {
    try {
      return (json.decode(customer) as List<dynamic>).map<CustomerModel>((item) => CustomerModel.fromJson(item)).toList();
    } catch (e) {
      return [];
    }
  }
}

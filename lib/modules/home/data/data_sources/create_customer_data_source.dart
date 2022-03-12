import 'package:joao_parking/modules/home/data/models/create_customer_model.dart';
import 'package:joao_parking/modules/home/domain/entities/create_customer_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CreateCustomerDataSource {
  Future<CustomerModel> create(CustomerEntity create);
}

class CreateCustomerDataSourceImpl implements CreateCustomerDataSource {
  SharedPreferences? _prefs;

  List<CustomerModel> history = [];

  appSettings() {
    _startSettings();
  }

  _startSettings() async {
    await _startSharedPreferences();

    await _readHistoryAndParking();
  }

  Future<void> _startSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  _readHistoryAndParking() {
    try {
      final String? encodedGetHistory = _prefs!.getString('history');
      history = CustomerModel.decode(encodedGetHistory ?? '[]') ?? [];
    } catch (e) {
      history = [];
    }
  }

  void setHistoryAndParkings(String type) async {
    await _prefs!.setString('history', CustomerModel.encode(history)!);

    await _readHistoryAndParking();
  }

  @override
  Future<CustomerModel> create(CustomerEntity create) {
    // TODO: implement create
    throw UnimplementedError();
  }

  // @override
  // Future<CustomerModel> create(CustomerEntity create) => _createFromShared(
  //       create,
  //     );
  // Future<CustomerModel> _createFromShared(CustomerEntity create) async {
  //   return CustomerModel.fromJson();
  // }
}

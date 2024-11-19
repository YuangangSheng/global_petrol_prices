import 'package:dio/dio.dart';

import 'gas_price_model.dart';

class GasPriceService {
  Future<GasPriceModel> fetchGasPrices(String city) async {
    final apiKey = 'your_api_key_here';
    final response = await Dio().get('https://api.example.com/gas-prices', queryParameters: {'city': city});
    return GasPriceModel.fromJson(response.data);
  }
}
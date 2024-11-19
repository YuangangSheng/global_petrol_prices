import 'package:flutter/material.dart';

import '../model/gas_price_model.dart';
import '../model/gas_price_service.dart';

class GasPriceViewModel extends ChangeNotifier {
  final GasPriceService _service;
  GasPriceModel? gasPrice;
  bool isLoading = false;

  GasPriceViewModel(this._service);

  Future<void> fetchPrices(String city) async {
    isLoading = true;
    notifyListeners();

    try {
      gasPrice = await _service.fetchGasPrices(city);
    } catch (e) {
      print('Error fetching gas prices: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

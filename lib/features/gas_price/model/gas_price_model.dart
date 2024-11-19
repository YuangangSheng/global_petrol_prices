class GasPriceModel {
  final String city;
  final Map<String, double> prices;

  GasPriceModel({required this.city, required this.prices});

  factory GasPriceModel.fromJson(Map<String, dynamic> json) {
    return GasPriceModel(
      city: json['city'],
      prices: Map<String, double>.from(json['prices']),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/gas_price_view_model.dart';

class GasPriceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<GasPriceViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text("Gas Prices")),
      body: viewModel.isLoading
          ? Center(child: CircularProgressIndicator())
          : viewModel.gasPrice == null
              ? Center(child: Text("No data available"))
              : Column(
                  children: [
                    Text("City: ${viewModel.gasPrice!.city}"),
                    ...viewModel.gasPrice!.prices.entries.map(
                      (e) => Text("${e.key}: ${e.value}"),
                    ),
                  ],
                ),
    );
  }
}

import 'package:flutter_app/models/currency.dart';
import 'package:flutter_app/models/currencyRate.dart';
import 'package:flutter_app/networking/components/generalResponse.dart';
import 'package:flutter_app/networking/components/request.dart';
import 'package:flutter_app/networking/components/router.dart';

Future<List<Currency>> currencies() async {
  final json = await get(Endpoint.currencies.route);
  final data = GeneralResponse.fromJson(json).data;
  final currencies = data.map((e) => Currency.fromJson(e)).toList();
  return currencies;
}

Future<List<CurrencyRate>> currencyRates() async {
  final json = await get(Endpoint.currencyRates.route);
  final data = GeneralResponse.fromJson(json).data;
  final rates = data.map((e) => CurrencyRate.fromJson(e)).toList();
  return rates;
}

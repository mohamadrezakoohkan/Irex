
class CurrencyRate {

  final String symbol;
  final double rate;

  CurrencyRate(this.symbol, this.rate);

  CurrencyRate.fromJson(Map<String, dynamic> json)
      : symbol = json['symbol'],
        rate = json['rate'];

  Map<String, dynamic> toJson() => {
    'symbol': symbol,
    'rate': rate,
  };
}
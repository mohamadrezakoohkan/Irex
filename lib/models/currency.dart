
class Currency {

  final String name;
  final String symbol;
  final String isoCode;

  Currency(this.name, this.symbol, this.isoCode);

  Currency.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        symbol = json['symbol'],
        isoCode = json['isoCode'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'symbol': symbol,
        'isoCode': isoCode,
      };
}
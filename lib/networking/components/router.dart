
const baseUrl = 'https://api-staging.irex.io/v1/user/';

enum Endpoint {
  currencies,
  currencyRates
}

extension Route on Endpoint {

  String get path {
    switch (this) {
      case Endpoint.currencies:
        return 'currencies';
      case Endpoint.currencyRates:
        return 'currencies/rates';
    }
  }

  Uri get route {
    // return Uri.parse(baseUrl + this.path);
    return Uri.parse('https://api.jsonbin.io/b/60e4505955b7245a20d71326/1');
  }
}
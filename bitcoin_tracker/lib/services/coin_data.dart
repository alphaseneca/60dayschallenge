import 'package:bitcoin_tracker/services/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const String apiKey = '483816e0-d9e0-439a-ab1f-37131da01d6f'; // your API key
const String baseURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String url = '$baseURL/$crypto/$selectedCurrency?apikey=$apiKey';
      var response = await NetworkHelper(url).getData();
      double price = response['rate'];
      cryptoPrices[crypto] = price.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}

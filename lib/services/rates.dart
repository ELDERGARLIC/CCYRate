import 'package:forexproject/services/networking.dart';

class RatesModel {
  Future<dynamic> getCurRates() async {
    NetworkHelper networkHelper = NetworkHelper();

    var curData = await networkHelper.getData();
    return curData;
  }
}

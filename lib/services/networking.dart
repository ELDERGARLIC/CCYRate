import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  Future getData() async {
    http.Response response = await http
        .get(Uri.encodeFull('https://ccyrate.com/api/get-rates'), headers: {
      'secret': 'ARZEXuvRvnljixAgf54NBTHyV6iR15156rPxJnSCsg46',
      'Cookie': '__cfduid=dd5f1b8ec4db5d7259fe789308121abbf1592380645',
    });
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

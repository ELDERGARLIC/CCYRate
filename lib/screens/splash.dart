import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:forexproject/services/rates.dart';
import '../main.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var curData = await RatesModel().getCurRates();
    print(curData);
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage(
        rates: curData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 125,
              height: 125,
              child: Image.asset('assets/Ccyrate.png'),
            ),
            SpinKitDoubleBounce(
              color: Colors.grey.shade800,
              size: 25.0,
            ),
          ],
        )
      ),
    );
  }
}

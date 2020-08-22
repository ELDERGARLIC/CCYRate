import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:forexproject/services/rates.dart';
import '../main.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var curData = await RatesModel().getCurRates();
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
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.grey.shade200,
          size: 100.0,
        ),
      ),
    );
  }
}

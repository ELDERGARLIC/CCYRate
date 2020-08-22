import 'package:flutter/material.dart';
import 'package:forexproject/elements/top_card.dart';
import 'screens/loading_screen.dart';
import 'dart:async';

//import 'package:forexproject/screens/details_page.dart';
//import 'package:forexproject/screens/test_page.dart';


void main() {
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROTOTYPE-I',
        initialRoute: '/loading',
        routes: {
        '/home': (context) => HomePage(),
        '/loading': (context) => LoadingScreen(),
        //'/test': (context) => TestPage(title: 'IDK WHAT LOL',),
        //'/details': (context) => DetailsPage(curName: 'USD', curFullName: 'US Dollar', curBuyPrice: 22400.toString(), curLastUpdateDate: '2020-08-13 14:02', curMaxBuyPrice: 22550.toString(), curMaxSelPrice: 22650.toString(), curMinBuyPrice: 22200.toString(), curMinSelPrice: 22300.toString(), curSellPrice: 22500.toString(), logoName: 'united-states.png',),
        },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({this.rates});

  final rates;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Timer timer;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 60), (Timer t) => addValue());
    updateUI(widget.rates);
  }

  void addValue() {
    setState(() {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/loading');
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  void updateUI(dynamic curData) {
    setState(() {
      if (curData == null) {
        print('connecting to server failed!');
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade50,
        child: Icon(
          Icons.refresh,
        color: Colors.grey.shade400,
      ),
        onPressed: (){
         Navigator.pushNamed(context, '/loading');
        }),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: ScrollConfiguration(
              behavior: ScrollBehavior(),
              child: GlowingOverscrollIndicator(
                axisDirection: AxisDirection.up,
                color: Color(0x00FFFFFF),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      HomeTitle(inputText: 'highlight'),
                      TopMenu(usdBuy: widget.rates['currencies'][1]['buy'] , usdSell: widget.rates['currencies'][1]['sell'], eurBuy: widget.rates['currencies'][2]['buy'] , eurSell: widget.rates['currencies'][2]['sell'], gbpBuy: widget.rates['currencies'][3]['buy'] , gbpSell: widget.rates['currencies'][3]['sell'],),
                      BottomTitle(),
                      BottomCard(curName: 'CHF', curFulName: 'Swiss Franc', curBuy: widget.rates['currencies'][4]['buy'].toString(), curSale: widget.rates['currencies'][4]['sell'].toString(), iconName: 'switzerland.png',),
                      BottomCard(curName: 'CAD', curFulName: 'Canadian Dollar', curBuy: widget.rates['currencies'][5]['buy'].toString(), curSale: widget.rates['currencies'][5]['sell'].toString(), iconName: 'canada.png',),
                      BottomCard(curName: 'AUD', curFulName: 'Australian Dollar', curBuy: widget.rates['currencies'][6]['buy'].toString(), curSale: widget.rates['currencies'][6]['sell'].toString(), iconName: 'australia.png',),
                      BottomCard(curName: 'SEK', curFulName: 'Swedish Krona', curBuy: widget.rates['currencies'][7]['buy'].toString(), curSale: widget.rates['currencies'][7]['sell'].toString(), iconName: 'sweden.png',),
                      BottomCard(curName: 'NOK', curFulName: 'Norwegian Krone', curBuy: widget.rates['currencies'][8]['buy'].toString(), curSale: widget.rates['currencies'][8]['sell'].toString(), iconName: 'norway.png',),
                      BottomCard(curName: 'RUB', curFulName: 'Russian Ruble', curBuy: widget.rates['currencies'][9]['buy'].toString(), curSale: widget.rates['currencies'][9]['sell'].toString(), iconName: 'russia.png',),
                      BottomCard(curName: 'THB', curFulName: 'Thai Baht', curBuy: widget.rates['currencies'][10]['buy'].toString(), curSale: widget.rates['currencies'][10]['sell'].toString(), iconName: 'thailand.png',),
                      BottomCard(curName: 'SGD', curFulName: 'Singapore Dollar', curBuy: widget.rates['currencies'][11]['buy'].toString(), curSale: widget.rates['currencies'][11]['sell'].toString(), iconName: 'singapore.png',),
                      BottomCard(curName: 'HKD', curFulName: 'Hong Kong Dollar', curBuy: widget.rates['currencies'][12]['buy'].toString(), curSale: widget.rates['currencies'][12]['sell'].toString(), iconName: 'hong-kong.png',),
                      BottomCard(curName: 'AZN', curFulName: 'Azerbaijani Manat', curBuy: widget.rates['currencies'][13]['buy'].toString(), curSale: widget.rates['currencies'][13]['sell'].toString(), iconName: 'azerbaijan.png',),
                      BottomCard(curName: 'GEL', curFulName: 'Georgian Lari', curBuy: widget.rates['currencies'][0]['buy'].toString(), curSale: widget.rates['currencies'][0]['sell'].toString(), iconName: 'georgia.png',),
                      BottomCard(curName: 'AMD', curFulName: '10 Armenian Dram', curBuy: widget.rates['currencies'][14]['buy'].toString(), curSale: widget.rates['currencies'][14]['sell'].toString(), iconName: 'armenia.png',),
                      BottomCard(curName: 'DKK', curFulName: 'Danish Krone', curBuy: widget.rates['currencies'][15]['buy'].toString(), curSale: widget.rates['currencies'][15]['sell'].toString(), iconName: 'denmark.png',),
                      BottomCard(curName: 'AED', curFulName: 'UAE Dirham', curBuy: widget.rates['currencies'][16]['buy'].toString(), curSale: widget.rates['currencies'][16]['sell'].toString(), iconName: 'uae.png',),
                      BottomCard(curName: 'JPY', curFulName: '10 Japanese Yen', curBuy: widget.rates['currencies'][17]['buy'].toString(), curSale: widget.rates['currencies'][17]['sell'].toString(), iconName: 'japan.png',),
                      BottomCard(curName: 'TRY', curFulName: 'Turkish Lira', curBuy: widget.rates['currencies'][18]['buy'].toString(), curSale: widget.rates['currencies'][18]['sell'].toString(), iconName: 'turkey.png',),
                      BottomCard(curName: 'CNY', curFulName: 'Chinese Yuan', curBuy: widget.rates['currencies'][19]['buy'].toString(), curSale: widget.rates['currencies'][19]['sell'].toString(), iconName: 'china.png',),
                      BottomCard(curName: 'SAR', curFulName: 'KSA Riyal', curBuy: widget.rates['currencies'][20]['buy'].toString(), curSale: widget.rates['currencies'][20]['sell'].toString(), iconName: 'saudi-arabia.png',),
                      BottomCard(curName: 'INR', curFulName: 'Indian Rupee', curBuy: widget.rates['currencies'][21]['buy'].toString(), curSale: widget.rates['currencies'][21]['sell'].toString(), iconName: 'india.png',),
                      BottomCard(curName: 'MYR', curFulName: 'Ringgit', curBuy: widget.rates['currencies'][22]['buy'].toString(), curSale: widget.rates['currencies'][22]['sell'].toString(), iconName: 'malaysia.png',),
                      BottomCard(curName: 'AFN', curFulName: 'Afghan Afghani', curBuy: widget.rates['currencies'][23]['buy'].toString(), curSale: widget.rates['currencies'][23]['sell'].toString(), iconName: 'afghanistan.png',),
                      BottomCard(curName: 'KWD', curFulName: 'Kuwaiti Dinar', curBuy: widget.rates['currencies'][24]['buy'].toString(), curSale: widget.rates['currencies'][24]['sell'].toString(), iconName: 'kuwait.png',),
                      BottomCard(curName: 'IQD', curFulName: '100 Iraqi Dinar', curBuy: widget.rates['currencies'][25]['buy'].toString(), curSale: widget.rates['currencies'][25]['sell'].toString(), iconName: 'iraq.png',),
                      BottomCard(curName: 'BHD', curFulName: 'Bahraini Dinar', curBuy: widget.rates['currencies'][26]['buy'].toString(), curSale: widget.rates['currencies'][26]['sell'].toString(), iconName: 'bahrain.png',),
                      BottomCard(curName: 'OMR', curFulName: 'Omani Rial', curBuy: widget.rates['currencies'][27]['buy'].toString(), curSale: widget.rates['currencies'][27]['sell'].toString(), iconName: 'oman.png',),
                      BottomCard(curName: 'QAR', curFulName: 'Qatari Riyal', curBuy: widget.rates['currencies'][28]['buy'].toString(), curSale: widget.rates['currencies'][28]['sell'].toString(), iconName: 'qatar.png',),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}

class UnfinishedConverterCard extends StatelessWidget {
  const UnfinishedConverterCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          width: 320.0,
          decoration: BoxDecoration(
            color: Colors.white, //background color of box
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF0EEF0),
                blurRadius: 30.0, // soften the shadow
                spreadRadius: 5.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  30.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

            ],
          ),
        ),
        SizedBox(
          width: 20,
          height: 80,
        ),
      ],
    );
  }
}

class ConverterTitleAndMoreButton extends StatelessWidget {
  const ConverterTitleAndMoreButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 25,
        height: 25,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned.fill(
              top: -55,
              child: Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned.fill(
              top: -15,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'converter',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomCard extends StatelessWidget {

  BottomCard({@required this.curName, @required this.curFulName, @required this.curBuy, @required this.curSale, @required this.iconName,});

  final String curName;
  final String curFulName;
  final String curBuy;
  final String curSale;
  final String iconName;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Align(
        child: Container(
          width: 300,
          height: 30,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                top: -45,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.shade200
                            ),
                          ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3.0),
                            child: Container(
                              width: 15,
                              height: 15,
                              child: Image(image: AssetImage('assets/$iconName')),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.grey.shade200
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                            height: 7,
                          ),
                          Container(
                            height: 30,
                            width: 175,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  curName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  curFulName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 8,
                                    color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  curBuy,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                  'Buy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 6,
                                      color: Color(0xFF84C9CB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 35,
                            height: 30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  curSale,
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                  'Sell',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 6,
                                      color: Colors.red.shade200
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomTitle extends StatelessWidget {
  const BottomTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 205,
        height: 70,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                  child: HomeTitle(inputText: 'currencies'),
              ),
              top: -115,
            )
          ],
        ),
      ),
    );
  }
}

class TopMenu extends StatelessWidget {

  TopMenu({this.eurBuy,this.eurSell,this.gbpBuy,this.gbpSell,this.usdBuy,this.usdSell});

  final int usdSell;
  final int usdBuy;
  final int eurSell;
  final int eurBuy;
  final int gbpSell;
  final int gbpBuy;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.0,
      child: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.right,
          color: Color(0x00FFFFFF),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                TopCard(curName: 'USD', curFullName: 'US Dollar', curBuyPrice: usdBuy.toString(), curLastUpdateDate: '2020-08-13 14:02', curMaxBuyPrice: (usdBuy+150).toString(), curMaxSelPrice: (usdSell+150).toString(), curMinBuyPrice: (usdBuy-200).toString(), curMinSelPrice: (usdSell-200).toString(), curSellPrice: usdSell.toString(), logoName: 'united-states.png',),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                TopCard(curName: 'EUR', curFullName: 'Euro', curBuyPrice: eurBuy.toString(), curLastUpdateDate: '2020-08-13 14:02', curMaxBuyPrice: (eurBuy+150).toString(), curMaxSelPrice: (eurSell+150).toString(), curMinBuyPrice: (eurBuy-200).toString(), curMinSelPrice: (eurSell-200).toString(), curSellPrice: eurSell.toString(), logoName: 'world.png'),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                TopCard(curName: 'GBP', curFullName: 'British Pound', curBuyPrice: gbpBuy.toString(), curLastUpdateDate: '2020-08-13 14:02', curMaxBuyPrice: (gbpBuy+150).toString(), curMaxSelPrice: (gbpSell+150).toString(), curMinBuyPrice: (gbpBuy-200).toString(), curMinSelPrice: (gbpSell-200).toString(), curSellPrice: gbpSell.toString(), logoName: 'uk.png'),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  HomeTitle({this.inputText});

  final String inputText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          inputText,
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Exo'
          ),
        ),
      ),
    );
  }
}



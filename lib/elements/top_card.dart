import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  TopCard({@required this.curName, @required this.curFullName, @required this.curBuyPrice, @required this.curSellPrice, @required this.curLastUpdateDate, @required this.curMinSelPrice, @required this.curMaxSelPrice, @required this.curMinBuyPrice, @required this.curMaxBuyPrice,@required this.logoName,});

  final String curName;
  final String curFullName;

  final String curBuyPrice;
  final String curSellPrice;
  final String curLastUpdateDate;
  final String curMinSelPrice;
  final String curMaxSelPrice;
  final String curMinBuyPrice;
  final String curMaxBuyPrice;

  final String logoName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            print(curName); //TODO: PAGE CHANGING ACTION
          },
          child: Container(
            height: 210.0,
            width: 168.0,
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
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ChosenLogo(assetName: logoName),
                ChosenTitle(chosenTitle: curName),
                ChosenSubTitle(subTitle: curFullName),
                CardData(curSellPrice: curSellPrice, curMinSelPrice: curMinSelPrice, curMinBuyPrice: curMinBuyPrice, curMaxSelPrice: curMaxSelPrice, curMaxBuyPrice: curMaxBuyPrice, curLastUpdateDate: curLastUpdateDate, curBuyPrice: curBuyPrice,),
              ],
            ),
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

class CardData extends StatelessWidget {

  CardData({ @required this.curBuyPrice, @required this.curSellPrice, @required this.curLastUpdateDate, @required this.curMinSelPrice, @required this.curMaxSelPrice, @required this.curMinBuyPrice, @required this.curMaxBuyPrice});

  final String curBuyPrice;
  final String curSellPrice;
  final String curLastUpdateDate;
  final String curMinSelPrice;
  final String curMaxSelPrice;
  final String curMinBuyPrice;
  final String curMaxBuyPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, bottom: 5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 73,
                  child: Text(
                    '$curBuyPrice T',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF84C9CB),
                    ),
                  ),
                ),
                Container(
                  width: 65,
                  child: Text(
                    '$curSellPrice T',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.red.shade200
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 58,
                  child: Text(
                    'BUY',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 7,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 65,
                  child: Text(
                    'SELL',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 73,
                  child: Text(
                    '$curMaxBuyPrice T',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10
                    ),
                  ),
                ),
                Container(
                  width: 65,
                  child: Text(
                    '$curMaxSelPrice T',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 58,
                  child: Text(
                    'MAX BUY',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 7,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 65,
                  child: Text(
                    'MAX SELL',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 73,
                  child: Text(
                    '$curMinBuyPrice T',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10
                    ),
                  ),
                ),
                Container(
                  width: 65,
                  child: Text(
                    '$curMinSelPrice T',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 58,
                  child: Text(
                    'MIN BUY',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 7,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 65,
                  child: Text(
                    'MIN SELL',
                    style: TextStyle(
                        fontSize: 7,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChosenSubTitle extends StatelessWidget {

  ChosenSubTitle({@required this.subTitle});

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w500
      ),
    );
  }
}

class ChosenTitle extends StatelessWidget {

  ChosenTitle({this.chosenTitle});

  final String chosenTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        chosenTitle,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}

class ChosenLogo extends StatelessWidget {

  ChosenLogo({@required this.assetName});

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Image(image: AssetImage('assets/$assetName'))
      ),
    );
  }
}
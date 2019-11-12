import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:uniuitest/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:uniuitest/VisualsEnhancements/ProportionalResizer.dart';

void main() => runApp(WalletPage());

class WalletPage extends StatelessWidget {
  final String urls = 'https://cdn.mos.cms.futurecdn.net/VmPnoyzkPiscEeEF9cdjET-970-80.jpg';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircularPercentIndicator(
                      backgroundColor: Colors.transparent,
                      center: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: NetworkImage(urls))),
                      ),
                      radius: 70.0,
                      lineWidth: 5.0,
                      percent: 1,
                      progressColor: darkBloodRed,
                    ),
                    Text(
                      'CARTEIRA',
                      style: TextStyle(
                          color: darkBloodRed,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.account_balance_wallet,
                      size: 40,
                      color: darkBloodRed,
                    )
                  ],
                ),
                Divider(),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
                  child: Card(
                    color: Colors.white24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "SALDO DISPONÍVEL:",
                          style: TextStyle(
                              color: darkBloodRed,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(" 1000,00",
                            style: TextStyle(color: Colors.green, fontSize: 20))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Gerenciar"),
                                Text("Meus"),
                                Text("Cartões"),
                              ],
                            ),
                            Icon(Icons.credit_card, size: 40)
                          ],
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Recarregar"),
                                Text("Com"),
                                Text("QR")
                              ],
                            ),
                            Icon(MaterialCommunityIcons.getIconData("qrcode"),
                                size: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 30),
                ),
                Container(
                  color: Color(0xFFF5F5F5),
                  height: SizeConfig.blockSizeHorizontal * 70,
                  width: SizeConfig.blockSizeVertical * 50,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Recompensas"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Pontos adquiridos: 1000",
                                  style: TextStyle(fontSize: 8),
                                ),
                                Icon(
                                  MaterialCommunityIcons.getIconData("trophy"),
                                  size: 15,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                LinearPercentIndicator(
                                  width: SizeConfig.blockSizeHorizontal * 75,
                                  lineHeight: 6.0,
                                  percent: 0.25,
                                  progressColor: Colors.amber,
                                  backgroundColor: Colors.black12,
                                  animationDuration: 500,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20, top: 30),
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 20, bottom: 20),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      MaterialCommunityIcons.getIconData(
                                          "trophy"),
                                      size: 50,
                                      color: Colors.yellow,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "PARABÉNS!!!",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.orange[400]),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "Você atingiu sua meta!",
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "Toque para receber seu premio.",
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10, right: 10),
                                child: Text("VER MAIS DETALHES",
                                style: TextStyle(
                                  color: darkBloodRed,
                                  fontSize: 15
                                ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

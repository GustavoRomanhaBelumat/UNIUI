import '../constants.dart';
import 'package:flutter/material.dart';
import '../VisualsEnhancements/ProportionalResizer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(ProfilePage());
final String urlz =
    'https://cdn.mos.cms.futurecdn.net/VmPnoyzkPiscEeEF9cdjET-970-80.jpg';
final Color green = Color(0xFF1E8161);

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      height: SizeConfig.blockSizeVertical * 100,
      width: SizeConfig.blockSizeHorizontal * 100,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill, image: NetworkImage(urlz))),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Elon Musk',
                      style: TextStyle(
                          color: darkBloodRed,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Idade: 48 anos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: darkBloodRed,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Mora em: Algum lugar',
                      style: TextStyle(
                          color: darkBloodRed,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    LinearPercentIndicator(
                      alignment: MainAxisAlignment.center,
                      width: 120,
                      lineHeight: 6.0,
                      percent: 0.2,
                      progressColor: Colors.amber,
                      backgroundColor: Colors.black12,
                      animationDuration: 500,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.group,
                    color: Colors.black38,
                    size: 10,
                  ),
                  Text(
                    " 226 Amigos",
                    style: TextStyle(color: darkBloodRed, fontSize: 10),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
              ),
              Divider(),
              Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularPercentIndicator(
                      backgroundColor: Colors.transparent,
                      center: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: NetworkImage(urlz))),
                      ),
                      radius: 70.0,
                      lineWidth: 5.0,
                      percent: 0.75,
                      progressColor: Colors.amber,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "CONSUMO",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "Seu consumo gera pontos.",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 2, top: 1, bottom: 2),
                              child: LinearPercentIndicator(
                                width: SizeConfig.blockSizeHorizontal * 60,
                                lineHeight: 4.0,
                                percent: 0.75,
                                progressColor: Colors.amber,
                                backgroundColor: Colors.black12,
                                animationDuration: 500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "28.5k pontos",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularPercentIndicator(
                      center: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: NetworkImage(urlz))),
                      ),
                      radius: 70.0,
                      lineWidth: 5.0,
                      percent: 0.25,
                      progressColor: Colors.amber,
                      backgroundColor: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "AVALIAÇÃO",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "Avalie os eventos e ganhe pontos.",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 2, top: 1, bottom: 2),
                              child: LinearPercentIndicator(
                                width: SizeConfig.blockSizeHorizontal * 60,
                                lineHeight: 4.0,
                                percent: 0.25,
                                progressColor: Colors.amber,
                                backgroundColor: Colors.black12,
                                animationDuration: 500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "7.5k pontos",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularPercentIndicator(
                      center: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: NetworkImage(urlz))),
                      ),
                      radius: 70.0,
                      lineWidth: 5.0,
                      percent: 0.50,
                      progressColor: Colors.amber,
                      backgroundColor: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "INTERAÇÃO",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "Responda questionários e ganhe pontos.",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 2, top: 1, bottom: 2),
                              child: LinearPercentIndicator(
                                width: SizeConfig.blockSizeHorizontal * 60,
                                lineHeight: 4.0,
                                percent: 0.50,
                                progressColor: Colors.amber,
                                backgroundColor: Colors.black12,
                                animationDuration: 500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 1, bottom: 2),
                              child: Text(
                                "14.2k pontos",
                                style: TextStyle(
                                    color: darkBloodRed,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 60,
                height: SizeConfig.blockSizeVertical * 6,
                child: RaisedButton(
                  key: null,
                  onPressed: () {},
                  color: const Color(0xFFe0e0e0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        MaterialCommunityIcons.getIconData("qrcode"),
                        color: darkBloodRed,
                      ),
                      Text(
                        "Pagar amigo",
                        style: TextStyle(color: darkBloodRed),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

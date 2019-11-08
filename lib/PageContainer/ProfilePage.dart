import 'package:flutter/material.dart';
import '../VisualsEnhancements/ProportionalResizer.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(ProfilePage());
final String url = 'https://i.redd.it/85z7uqfl96z01.jpg';
final Color green = Color(0xFF1E8161);

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.transparent,
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
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill, image: NetworkImage(url))),
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
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 2, right: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Idade: 48 anos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Mora em: Algum lugar',
                      style: TextStyle(
                          color: Colors.white,
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
                      backgroundColor: Colors.white70,
                      animationDuration: 500,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.group,
                color: Colors.white70,
              ),
              Text(
                "226 Amigos",
                style: TextStyle(color: Colors.white70),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 6),
              ),
              Card(
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
                                fit: BoxFit.fill, image: NetworkImage(url))),
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
                                    color: Colors.white,
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
                                    color: Colors.white,
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
                                backgroundColor: Colors.transparent,
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
                                    color: Colors.white,
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
                                fit: BoxFit.fill, image: NetworkImage(url))),
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
                                    color: Colors.white,
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
                                    color: Colors.white,
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
                                backgroundColor: Colors.transparent,
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
                                    color: Colors.white,
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
                                fit: BoxFit.fill, image: NetworkImage(url))),
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
                                    color: Colors.white,
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
                                    color: Colors.white,
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
                                backgroundColor: Colors.transparent,
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
                                    color: Colors.white,
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
              Icon(Icons.blur_on),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 60,
                height: SizeConfig.blockSizeVertical * 6,
                child: RaisedButton(
                    key: null,
                    onPressed: () {},
                    color: const Color(0xFFe0e0e0),
                    child: Text(
                      "Pagar amigo",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: const Color(0xFF7B051A),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

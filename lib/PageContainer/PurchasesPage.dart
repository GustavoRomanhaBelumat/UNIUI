import 'package:flutter/material.dart';
import 'package:uniuitest/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(PurchasesPage());

class PurchasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String url =
        'https://cdn.mos.cms.futurecdn.net/VmPnoyzkPiscEeEF9cdjET-970-80.jpg';
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "INGRESSOS RECENTES",
                      style: TextStyle(
                          color: darkBloodRed,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                shape: BoxShape.rectangle,
                image:
                    DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)),
              ),
              child: Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Text("Data do evento",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: <Widget>[
                          CircularPercentIndicator(
                            center: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(url))),
                            ),
                            radius: 70.0,
                            lineWidth: 5.0,
                            percent: 1.0,
                            progressColor: darkBloodRed,
                            backgroundColor: Colors.transparent,
                          ),
                          VerticalDivider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Nome do Evento",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Local do Evento",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Contato",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
           Divider(),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                shape: BoxShape.rectangle,
                image:
                    DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)),
              ),
              child: Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Text("Data do evento",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: <Widget>[
                          CircularPercentIndicator(
                            center: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(url))),
                            ),
                            radius: 70.0,
                            lineWidth: 5.0,
                            percent: 1.0,
                            progressColor: darkBloodRed,
                            backgroundColor: Colors.transparent,
                          ),
                          VerticalDivider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Nome do Evento",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Local do Evento",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Contato",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
           Divider(),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                shape: BoxShape.rectangle,
                image:
                    DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)),
              ),
              child: Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Text("Data do evento",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: <Widget>[
                          CircularPercentIndicator(
                            center: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(url))),
                            ),
                            radius: 70.0,
                            lineWidth: 5.0,
                            percent: 1.0,
                            progressColor: darkBloodRed,
                            backgroundColor: Colors.transparent,
                          ),
                          VerticalDivider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Nome do Evento",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Local do Evento",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Contato",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

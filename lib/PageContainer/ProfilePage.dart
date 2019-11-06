import 'package:flutter/material.dart';

void main() => runApp(ProfilePage());
final String url = 'https://i.redd.it/85z7uqfl96z01.jpg';
final Color green = Color(0xFF1E8161);

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
            padding:
                const EdgeInsets.only(top: 1, bottom: 2, right: 13),
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
          Card(
            child: Text("Card"),
          ),
          Card(
            child: Text("Card"),
          ),
          Card(
            child: Text("Card"),
          ),
          Card(
            child: Text("Card"),
          ),
          Card(
            child: Text("Card"),
          ),
          SizedBox(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

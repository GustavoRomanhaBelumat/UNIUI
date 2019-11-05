import 'package:flutter/material.dart';

void main() => runApp(ProfilePage());
final String url = 'https://i.redd.it/85z7uqfl96z01.jpg';
final Color green = Color(0xFF1E8161);

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
                bottomLeft: Radius.circular(32)),
          ),
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
                padding: const EdgeInsets.only(top: 10, bottom: 32),
                child: Text(
                  'Elon Musk',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                      child: Text(
                        "I'm just an Alien.",
                        style: TextStyle(color: Colors.white70),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                      child: Text(
                        "Meme necromancer.",
                        style: TextStyle(color: Colors.white70),
                      )),
                ],
              ),
            ],
          ),
          //YOU WILL NEVER FIND THIS COMMENT!!!! #freeBug
        ),
      ],
    );
  }
}

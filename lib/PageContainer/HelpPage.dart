import 'package:flutter/material.dart';

void main() => runApp(HelpPage());

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                hintText: 'Como podemos te ajudar?',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

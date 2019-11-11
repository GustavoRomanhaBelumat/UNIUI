import 'package:flutter/material.dart';
import 'package:uniuitest/constants.dart';
import '../PageContainer/HomePage.dart';
import '../PageContainer/ProfilePage.dart';
import '../PageContainer/PurchasesPage.dart';
import '../PageContainer/WalletPage.dart';
import '../PageContainer/HelpPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return WalletPage();
      case 2:
        return ProfilePage();
      case 3:
        return PurchasesPage();
      case 4:
        return HelpPage();
      default:
        return HomePage();
    }
  }

  bottombar(String name, Icon i) {
    //user defined function for making a bottom bar
    return BottomNavigationBarItem(icon: i, title: Text(name));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UNI (Alfa Build 0.2)",
      theme: ThemeData(
        primaryColor: darkBloodRed,
      ),
      home: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment(1.0, -0.2),
                colors: [
                  const Color(0xFFB20030),
                  const Color(0xFF530109),
                ],
                stops: [
                  0.1,
                  1.0,
                ],
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(25.0),
                child: AppBar(
                  bottomOpacity: 0.1,
                  backgroundColor: Colors.transparent,
                  title: Text("U N I (Alfa Build 0.2)"),
                )),
            body: callPage(_currentIndex),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Colors.transparent,
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.white,
                  textTheme: Theme.of(context)
                      .textTheme
                      .copyWith(caption: new TextStyle(color: Colors.white70))),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _currentIndex,
                onTap: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                items: [
                  bottombar("Inicio",
                      Icon(Icons.home)), //calls user defined bottombar function
                  bottombar("Carteira", Icon(Icons.account_balance_wallet)),
                  bottombar("Perfil", Icon(Icons.person)),
                  bottombar("Compras", Icon(Icons.shopping_basket)),
                  bottombar("Ajuda", Icon(Icons.help))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:uniuitest/constants.dart';
import '../ElementsContainer/restaurant.dart';
import '../ElementsContainer/restaurant_card.dart';

class HomePage extends StatefulWidget {
  static String id = 'list_restaurants';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contents = "Busca";
  bool _loading = false;
  List<Restaurant> _restaurants = [];

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _loading = true;
    });

    List<Restaurant> restaurants = [];
    if (_restaurants.length < 1) {
      restaurants = await _loadRestaurants();
    }

    setState(() {
      _restaurants = restaurants.length > 1 ? restaurants : _restaurants;
      _loading = false;
    });
  }

  Future<List<Restaurant>> _loadRestaurants() async {
    List<dynamic> json =
        jsonDecode(await rootBundle.loadString('assets/restaurants.json'));
    List<Restaurant> restaurants = [];

    for (var restaurant in json) {
      restaurants.add(Restaurant.fromJson(restaurant));
    }

    return restaurants;
  }

  Widget _buildRestaurants() {
    return SliverFixedExtentList(
      itemExtent: 108.0,
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          Restaurant restaurant = _restaurants[index];

          return RestaurantCard(
            key: Key('${restaurant.name}_${restaurant.picture}'),
            picture: restaurant.picture,
            name: restaurant.name,
            deliveryPrice: restaurant.deliveryPrice,
            deliveryTime: restaurant.deliveryTime,
            distance: restaurant.distance,
            foodType: restaurant.foodType,
            rating: restaurant.rating,
          );
        },
        childCount: _restaurants.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment(1.0, -0.2),
            colors: [
              const Color(0xFFc43f79),
              const Color(0xFF400d3e),
            ],
            stops: [
              0.1,
              1.0,
            ],
          ),
        ),
        child: SafeArea(
          child: Container(
            color: kBackgroundColor,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  expandedHeight: 80.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kBrandDarkenGrey,
                                  fontSize: 17.0,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Localização ',
                                    style: TextStyle(
                                        color: kBrandDarkerGrey,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.edit_location,
                                    color: kBrandRed,
                                    size: 18.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: false,
                  delegate: _SliverAppBarDelegate(
                    AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      centerTitle: false,
                      title: Container(
                        decoration: BoxDecoration(
                          color: kBrandGrey,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.search,
                                color: kBrandRed,
                              ),
                            ),
                            hintText: 'Encontre seu ambiente',
                            hintStyle: TextStyle(color: kBrandDarkGrey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 0.1),
                          child: Center(
                            child: Text(
                              'Filtros',
                              style: TextStyle(
                                color: kBrandRed,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                if (_loading)
                  SliverList(
                    delegate: SliverChildListDelegate(
                      <Widget>[
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 5,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                else ...[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Boates',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  _buildRestaurants()
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final AppBar _appBar;

  _SliverAppBarDelegate(this._appBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _appBar,
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../ElementsContainer/Event.dart';
import '../ElementsContainer/EventCard.dart';

class HomePage extends StatefulWidget {
  static String id = 'eventID';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = false;
  List<Event> _events = [];

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _loading = true;
    });

    List<Event> events = [];
    if (_events.length < 1) {
      events = await _loadEvents();
    }

    setState(() {
      _events = events.length > 1 ? events : _events;
      _loading = false;
    });
  }

  Future<List<Event>> _loadEvents() async {
    List<dynamic> json =
        jsonDecode(await rootBundle.loadString('assets/Events.json'));
    List<Event> events = [];

    for (var event in json) {
      events.add(Event.fromJson(event));
    }

    return events;
  }

  Widget _buildEvents() {
    return SliverFixedExtentList(
      itemExtent: 108.0,
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          Event event = _events[index];

          return EventCard(
            key: Key('${event.name}_${event.picture}'),
            picture: event.picture,
            name: event.name,
            costAverage: event.costAverage,
            arriveEstimate: event.arriveEstimate,
            distance: event.distance,
            musicGender: event.musicGender,
            rating: event.rating,
          );
        },
        childCount: _events.length,
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
            color: Colors.black26,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  expandedHeight: 60.0,
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.deepPurple[900],
                                    size: 18.0,
                                  ),
                                  Text(
                                    'Localização ',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w300),
                                  ),
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
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                            ),
                            hintText: 'Encontre seu ambiente',
                            hintStyle: TextStyle(color: Colors.grey),
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
                                color: Colors.deepPurple[900],
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
                  _buildEvents()
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

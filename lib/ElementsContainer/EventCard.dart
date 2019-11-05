import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String name;
  final String picture;
  final String rating;
  final String musicGender;
  final String distance;
  final String arriveEstimate;
  final String costAverage;
  final Key key;

  EventCard({
    this.name,
    this.picture,
    this.rating,
    this.musicGender,
    this.distance,
    this.arriveEstimate,
    this.costAverage,
    this.key,
  });

  Widget _dotSeparator() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 3,
      height: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      key: key,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 3.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple[50]),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Center(
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[200],
                        ),
                      ),
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: picture,
                          placeholder: (context, url) => Container(
                            height: 120,
                            width: 120,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Center(
                            child: Icon(Icons.error),
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                VerticalDivider(),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 18.0,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              rating,
                              style: TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 13,
                              ),
                            ),
                            _dotSeparator(),
                            Text(
                              musicGender,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                            _dotSeparator(),
                            Text(
                              distance,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              arriveEstimate,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                            _dotSeparator(),
                            Text(
                              costAverage,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

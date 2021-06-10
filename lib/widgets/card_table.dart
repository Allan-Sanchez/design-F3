import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            cardIcon: Icons.dashboard,
            colorAvatar: Colors.blue[400],
            cardName: 'General',
          ),
          _SingleCard(
            cardIcon: Icons.photo,
            colorAvatar: Colors.red[300],
            cardName: 'Images',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            cardIcon: Icons.shopping_bag,
            colorAvatar: Colors.purple[400],
            cardName: 'Shopping',
          ),
          _SingleCard(
            cardIcon: Icons.people_alt,
            colorAvatar: Colors.grey[600],
            cardName: 'Contacts',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            cardIcon: Icons.movie,
            colorAvatar: Colors.green[400],
            cardName: 'Media',
          ),
          _SingleCard(
            cardIcon: Icons.cloud,
            colorAvatar: Colors.purpleAccent[400],
            cardName: 'Cloud',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            cardIcon: Icons.timer,
            colorAvatar: Colors.orangeAccent[400],
            cardName: 'Clock',
          ),
          _SingleCard(
            cardIcon: Icons.explore_rounded,
            colorAvatar: Colors.pink[400],
            cardName: 'Locations',
          )
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData cardIcon;
  final String cardName;
  final Color colorAvatar;

  const _SingleCard(
      {Key key,
      @required this.cardIcon,
      @required this.cardName,
      @required this.colorAvatar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        radius: 40,
        backgroundColor: this.colorAvatar,
        child: Icon(
          this.cardIcon,
          size: 40,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 15),
      Text(
        this.cardName,
        style: TextStyle(color: this.colorAvatar, fontSize: 20),
      )
    ]));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
    ;
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(Icons.border_all, Colors.blue, 'General'),
          _SingleCard(Icons.car_rental, Colors.pinkAccent, 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(Icons.shop, Colors.blue, 'General'),
          _SingleCard(Icons.car_rental, Colors.purpleAccent, 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(Icons.border_all, Colors.blue, 'General'),
          _SingleCard(Icons.car_rental, Colors.pinkAccent, 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(Icons.movie, Colors.greenAccent, 'General'),
          _SingleCard(Icons.car_rental, Colors.pinkAccent, 'Transport'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  _SingleCard(this.icon, this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.text,
            style: TextStyle(
              color: this.color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}

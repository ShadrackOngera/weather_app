import 'package:flutter/material.dart';

class TextHepler {
  static Widget primaryHeaderText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
        color: Colors.brown.shade900,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Widget secondaryHeaderText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        color: Colors.brown.shade900,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  static Widget primaryText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        color: Colors.brown.shade900,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static Widget secondaryText({required String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        color: Colors.brown.shade900,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

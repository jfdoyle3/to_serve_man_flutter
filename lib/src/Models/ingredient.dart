import 'package:flutter/material.dart';

class Ingredient {


  final int _amount;
  final String _measurement;
  final String _name;
  final String _type;

  const Ingredient(this._name,
      this._type,
      this._amount,
      this._measurement);

  String get name => _name;

  String get type => _type;

  int get amount => _amount;

  String get measurement => _measurement;

}


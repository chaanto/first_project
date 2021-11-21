import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ColorEvent {
  toAmber,
  toLightBlue,
}

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc(Color initialState) : super(Colors.amber);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.toAmber) ? Colors.amber : Colors.lightBlue;
    yield _color;
  }
}

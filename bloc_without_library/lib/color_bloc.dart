import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_lightblue }

class ColorBloc {
  Color _color = Colors.amber;

  /*
  * mengatur controller stream atau arus data
  * controller menggunakan parameter color sebagai stream atau arus datanya  
  */
  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();

  // getter untuk mengakses secara public, ibarat membuka keran
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  /*
  * stream controller parameternya diisi dengan color
  * stream controller ibarat suatu selang
  * stream sink seperti membuka keran, karena getter dapat diakses secara public
  * Stream<Color> memberikan output berupa state warna
  */
  StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get stateStream => _stateController.stream;

  /*
  * membuat fungsi untuk mengetahui event yang mengtrigger warna
  * jika warna yang di klik berwarna amber, maka outputnya adalah amber
  * jika warna yang di klik berwarna lightblue, maka outputnya adalah lightblue
  */
  void _mapEventToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    // saat keran terbuka, ditambahkan properti color untuk state nya
    _stateSink.add(_color);
  }

  // constructor
  ColorBloc() {
    // saat kelas dipanggil, maka otomatis menjalankan fungsi
    _eventController.stream.listen(_mapEventToState);
  }

  // menutup event dan state controller, untuk efisiensi dan lainnya
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}

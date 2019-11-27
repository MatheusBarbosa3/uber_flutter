import 'package:google_maps_flutter/google_maps_flutter.dart';

class Marcador {
  LatLng local;
  String caminhoImagem;
  String titulo;

  Marcador(this.local, this.caminhoImagem, this.titulo);
}

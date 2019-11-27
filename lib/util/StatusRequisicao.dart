class StatusRequisicao {
  /*
  passageiro:
    1) parado: -23.562006, -46.656009 (-23,562006, -46,656009)
    2) andou: -23.562408, -46.655518 (-23,562408, -46,655518)

  Motorista:
    1) longe do passageiro: -23.563068, -46.650550
    2) intermediário: -23.564924, -46.652460
    3) próximo ao passageiro: -23.562542, -46.655393

    4) a caminho do destino: -23.553442, -46.672161

  Destino:
    1) Destino final -23.547813, -46.686385
    2) Próximo ao destino -23.547791, -46.686474
  * */

  static const String AGUARDANDO = "aguardando";
  static const String A_CAMINHO = "a_caminho";
  static const String VIAGEM = "viagem";
  static const String FINALIZADA = "finalizada";
  static const String CONFIRMADA = "confirmada";
  static const String CANCELADA = "cancelada";
}

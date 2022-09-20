class FormulasProvider {
  /**
   * Function [caudal] calcula el caudal de los modulos en la planta de rionegro
   * [alturaCanaleta] es la altura de la canaleta en metros
   */
  static double caudal(double alturaCanaleta) {
    double caudal;
    caudal = (alturaCanaleta * 1.522) * 690;
    return caudal;
  }

  /**
   * Function [aforoSinTiempo] calcula el aforo del oxidante y el desinfectante en litros hora
   * [caudal] es el caudal del modulo a calcular en litros por segundo
   * [ppm] son las partes por millon del reactivo en miligramos litro 
   * [concentracion] es la concentracion del reactivo en gramos litro
   */
  static double aforoSinTiempo(
      double caudal, double ppm, double concentracion) {
    double aforo;
    aforo = ((caudal * ppm) / (concentracion * 1000)) * 3600;
    return aforo;
  }

  /**
   * Function [aforoConTiempo] calcula el aforo del absorbente y del ayudante de floculacion en mililitros por segundo
   * [caudal] es el caudal del modulo a calcular en litros por segundo
   * [ppm] son las partes por millon del reactivo en miligramos litro 
   * [concentracion] es la concentracion del reactivo en gramos litro
   * [tiempo] es el tiempo de aforo en segundos
   */
  static double aforoConTiempo(
      double caudal, double ppm, double concentracion, double tiempo) {
    double aforo;
    aforo = ((caudal * ppm) / (concentracion * 1000) * 1000) * tiempo;
    return aforo;
  }

  /**
   * Function [aforoCuagulante] calcula el aforo del cuagulante en melilitros por tiempo en segundos
   * [caudal] es el caudal del modulo a calcular en litros por segundo
   * [ppm] son las partes por millon del reactivo en mililitros por metro cubico 
   * [tiempo] es el tiempo de aforo en segundos
   */
  static double aforoCuagulante(double caudal, double ppm, double tiempo) {
    double aforo;
    aforo = ((caudal * ppm) / 1000) * tiempo;
    return aforo;
  }

  /**
   * Function [ppmSinTiempo] calcula los ppm del oxidante y el desinfectante en miligramos por litro
   * [caudal] es el caudal del modulo a calcular en litros por segundo
   * [aforo] aforo del reactivo en litros hora 
   * [concentracion] es la concentracion del reactivo en gramos litro
   */
  static double ppmSinTiempo(
      double caudal, double aforo, double concentracion) {
    double ppm;
    ppm = ((aforo / 3.6) * concentracion) / caudal;
    return ppm;
  }

  /**
   * Function [ppmConTiempo] calcula los ppm del absorbente y el ayudante de floculacion en miligramos por litro
   * [caudal] es el caudal del modulo a calcular en litros por segundo
   * [aforo] aforo del reactivo en mililitros 
   * [concentracion] es la concentracion del reactivo en gramos litro
   * [tiempo] del aforo en segundos
   */
  static double ppmConTiempo(
      double caudal, double aforo, double concentracion, double tiempo) {
    double ppm;
    ppm = ((aforo / tiempo) * concentracion) / ((caudal / 1000) / 1000);
    return ppm;
  }

  /**
   * Function [ppmCuagulante] calcula los ppm del cuagulante en miligramos por litro
   * [caudal] es el caudal del modulo a calcular en litros por segundo
   * [aforo] aforo del reactivo en mililitros 
   * [tiempo] del aforo en segundos
   */
  static double ppmCuagulante(double caudal, double aforo, double tiempo) {
    double ppm;
    ppm = ((aforo / tiempo) * 1000) / caudal;
    return ppm;
  }

  /**
   * Function [ppmTotalRop] calcula los ppm del desinfectante para anotar en el Rop
   * [caudalModulo1] es el caudal del modulo1
   * [caudalModulo2] es el caudal del modulo2
   * [caudalTotal] es el caudal total de la planta de rionegro
   * [ppmModulo1] los ppm de desinfectante que se  estan aplicando al modulo1 
   * [ppmModulo2] los ppm de desinfectante que se  estan aplicando al modulo2 
   * [ppmTanqu] los ppm de desinfectante que se  estan aplicando al tanque
   */
  static double ppmTotalRop(
      double caudalModulo1,
      double caudalModulo2,
      double caudalTotal,
      double ppmModulo1,
      double ppmModulo2,
      double ppmTanque) {
    double ppmTotal;
    ppmTotal = (((caudalModulo1 * ppmModulo1) + (caudalModulo2 * ppmModulo2)) /
            caudalTotal) +
        ppmTanque;
    return ppmTotal;
  }
}



class CheckPoints {
  List<BoolQuestion> _checkList = new List();

  CheckPoints() {
    _checkList.add(BoolQuestion('Sistema de dirección primaria'));
    _checkList.add(BoolQuestion('Sistema de frenos'));
    _checkList.add(BoolQuestion('Cinturón de seguridad'));
    _checkList.add(BoolQuestion('Vidrios panorámico'));
    _checkList.add(BoolQuestion('Espejos retrovisores'));
    _checkList.add(BoolQuestion('Bocina'));
    _checkList.add(BoolQuestion('Luces de trabajo'));
    _checkList.add(BoolQuestion('Extintor de incendios'));
    _checkList.add(BoolQuestion('Palancas de operación / Pedales / Volante'));
    _checkList.add(BoolQuestion('Nivel de refrigerante'));
    _checkList.add(BoolQuestion('Nivel de aceite hidrahulico'));
    _checkList.add(BoolQuestion('Nivel de aceite transmision'));
    _checkList.add(BoolQuestion('Fugas o perdidas de combustible'));
    _checkList.add(BoolQuestion('Fugas o perdidas de refrigerante'));
    _checkList.add(BoolQuestion('Neumaticos / Ruedas / Llantas / Rims'));
    _checkList.add(BoolQuestion('Cilindros hidráhulicos'));
    _checkList.add(BoolQuestion('Indicadores, medidores en cabina'));
    _checkList.add(BoolQuestion('Silla del operador'));
    _checkList.add(BoolQuestion('Alarma de retroceso'));
    _checkList.add(BoolQuestion('Luces internas cabina'));
    _checkList.add(BoolQuestion('Alarma de retroceso'));
    _checkList.add(BoolQuestion('Señalización reflectiva'));
    _checkList.add(BoolQuestion('Baldes - Herramientas de corte'));
    _checkList
        .add(BoolQuestion('Nivel de combustible superior a 2/4 de tanque'));
    _checkList.add(BoolQuestion('Fugas de aceite'));
    _checkList.add(BoolQuestion('Lineas de grasa / Mangueras / Fugas'));
    _checkList
        .add(BoolQuestion('Escaleras / Plataformas / Barandas / Agarraderas'));
    _checkList.add(BoolQuestion('Puertas, cerraduras y sellos'));
    _checkList.add(BoolQuestion('Limpiaparabrisas / Lavadores'));
    _checkList.add(BoolQuestion('Daño estructura / Compueras / Cubierta'));
    _checkList.add(BoolQuestion('Latonería y pintura'));
    _checkList.add(BoolQuestion('Limpieza general de la cabina'));
    _checkList.add(BoolQuestion('Estado de aire acondicionado'));
  }

  List<BoolQuestion> getCheckList() {
    return _checkList;
  }
}

class BoolQuestion {
  final String question;
  final bool answer;

  BoolQuestion(this.question, {this.answer = false});

  // BoolQuestion(@required this.question, this.answer = false);

}

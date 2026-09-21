// Sesion 05
// Samuel Dominguez Lopez
// Matricula: 23030296

void main() {
  print("POO");
  Personaje heroe = Personaje( // Se crea un objeto de la clase Personaje
    nombre: "Samuel",
    clase: "Arquero",
    vida: 100,
    stamina: 100,
    escudo: 100
  );
  Map<String, dynamic> personajeJson ={ // Se crea un mapa JSON para crear un objeto de la clase Personaje
    "clase": "Hechicero",
    "nombre": "Gandalf",
    "vida": 200,
    "escudo": 300,
    "stamina": 50
  };
  Personaje heroe2 = Personaje.fromJson(personajeJson); // Aqui se hace uso del constructor nombrado para crear un objeto a partir de un mapa JSON
  print(heroe);
  print("Heroe 2\n");
  print(heroe2);
  heroe2.vida = -200;
  print(heroe2._vida);
}

class Personaje { //Se crea la clase Personaje
  String nombre;
  String clase;
  int _vida;
  int stamina;
  int escudo;


  Personaje.fromJson(Map<String, dynamic> personajeJson): // Aqui se hace uso del constructor nombrado para crear un objeto a partir de un mapa JSON
    nombre = personajeJson['nombre']?? 'Sin nombre',
    clase = personajeJson['clase']?? 'Sin clase',
    _vida = personajeJson['vida']?? 0,
    stamina = personajeJson['stamina']?? 0,
    escudo = personajeJson['escudo']?? 0;
      

  Personaje({ //Constructor
    required this.clase,
    required this.nombre,
    required this._vida,
    required this.stamina,
    required this.escudo
  }): assert( _vida >= 0, 'La vida no debe ser menor a negativa'); // Aqui se hace uso del assert para validar que la vida no sea negativa
  //   this.nombre = name;
  //   this.clase = classType;
  //   this.vida = vida;
  //   this.stamina = stamina;
  //   this.escudo = escudo;
  // }

  int get getVida => this._vida; // Se crea un getter para obtener la vida del personaje
  set vida(int cantidad) { // Se crea un setter para modificar la vida del personaje
    if (cantidad < 0) {
      print("La vida no puede ser negativa");
      return;
    } else {
      this._vida = cantidad;
    }
  }

  @override //Se convierte a string
  String toString() => "Nombre: " + this.nombre + ", \nClase: " + this.clase + ", \nVida: " + this._vida.toString() + ", \nStamina: " + this.stamina.toString() + ", \nEscudo: " + this.escudo.toString();
}
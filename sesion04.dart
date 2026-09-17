// Samuel Dominguez Lopez
// Matricula: 23030296
// Fecha: 17/09/2026

// Sesion 04
//Funciones

// Funcion de entrada principal

void main() {
  print("Esa es la sesion de funciones");
  suma();
  print(sumaStr());
  print(sumaP(7,3));
  print(sumaPO(14,2));
  print(sumaPO(14));
  print(sumaPNom(a : 3, b : 14));
}

// Funcion sin parametros
void suma() {
  print("a + b = c");
}

// Funcion sin parametros que retorna un valor
String sumaStr(){
  return "a + b = c";
}

// Funcion con parametros que retorna un valor
String sumaP(int a, int b){
  return "$a + $b = ${a + b}";
}

// Funcion con parametros opcionales
// Uso: sumaPO(14), sumaPO(14,2)
String sumaPO(int a, [int? b]){
  b = b ?? 0;
  return "$a + $b = ${a + b}";
}

// Funcion con parametros opcionales tipo 2
String sumaPO2(int a, [int? b]){
  b ??= 0;
  return "$a + $b = ${a + b}";
}

// Funcion con parametros nombrados
// a es un parametro opcional
// b es un parametro obligatorio
String sumaPNom({int a = 0, required int b}){
  return "$a + $b = ${a + b}";
}
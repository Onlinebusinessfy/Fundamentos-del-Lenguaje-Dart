// Sesion 06A
// Samuel Dominguez Lopez
// Matricula: 23030296

void main(){
  print("Inicio del programa");
  // Llamamos a la función asíncrona y esperamos su resultado
  // utilizando .then() cuando la operación haya terminado.
  getHttpRequest("http://www.cesun.edu.mx").then((value){
    // Se ejecuta cuando el Future termina y recibe el resultado.
    print(value);
  });
  // Este mensaje se imprime antes de que termine el Future,
  print("Fin del programa");
}

// Función asíncrona que devuelve un Future con un resultado futuro.
Future getHttpRequest(String url){
  // Simula una petición HTTP que tarda 1 segundo en completarse.
  return Future.delayed(Duration(seconds: 1), (){ //Devuelve despues del tiempo indicado
    return "Promesa asincrona finalizada";
  });
}
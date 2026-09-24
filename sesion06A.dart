// Sesion 06A
// Samuel Dominguez Lopez
// Matricula: 23030296

void main(){
  print("Inicio del programa");
  getHttpRequest("http://www.cesun.edu.mx").then((value){
    print(value);
  });
  print("Fin del programa");
}

Future getHttpRequest(String url){
  return Future.delayed(Duration(seconds: 1), (){
    return "Promesa asincrona finalizada";
  });
}
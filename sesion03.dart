// Estructuras de control

void main(){
  final int edad = 20;
  final List<int> numeros = [1,2,3,4,5];
  final int opcion = 0;
  int bandera = 10;

  print("La edad es: $edad");
  print("El numero 0: ${numeros[0]}");

  // If
  // If-Else

  if(edad > 18){
    print("Es mayor de edad");
  } 
  print("No es mayor de edad");

  print("${edad > 10 ? 'SI' : 'NO'} es mayor de edad");

  // Switch
  switch(opcion){
    case 0:
      print("La opción fue 0");
      break;
    case 1:
      print("La opción fue 1");
      break;
    default:
      print("Opción no válida");
      break;
  }
  // For
  for(int i=0; i<numeros.length; i++){
    print("El elemento de $i es ${numeros[i]}");
  }
  print("Utilizando for in");
  for(int numero in numeros){
    print("El numero es $numero");
  }
  // While
  print("Uso de while");
  while(bandera > 0){
    print("Bandera $bandera");
    bandera--;
  }

  // Actividad de clase
  print("Los valores fueron: $arreglo");
  print("El arreglo ordenado es: ${arreglo..sort()}");
  print("Cantidad de muestras ${arreglo.length}");
  print("Media: ${media(arreglo)}");
  print("Mediana: ${mediana(arreglo)}");
  print("Moda: ${moda(arreglo)}");
  // Dowhile


  // else{
  //   print("No es mayor de edad");
  // }
}


List<int> arreglo = [1,2,3,8,5,2];
double media(arreglo){
  int suma = 0;
  for(int numero in arreglo){
    suma += numero;
  }
  return suma / arreglo.length;
}

double mediana(arreglo){
  arreglo.sort();
  int longitud = arreglo.length;
  if(longitud % 2 == 0){
    return (arreglo[(longitud / 2).toInt()] + arreglo[(longitud / 2).toInt() - 1]) / 2;
  } else {
    return arreglo[(longitud / 2).toInt()].toDouble();
  }
}

double moda(arreglo){
  Map<int, int> frecuencia = {};
  for(int numero in arreglo){
    if(frecuencia.containsKey(numero)){
      frecuencia[numero] = frecuencia[numero]! + 1;
    } else {
      frecuencia[numero] = 1;
    }
  }
  int maxFrecuencia = 0;
  int moda = arreglo[0];
  frecuencia.forEach((numero, freq) {
    if(freq > maxFrecuencia){
      maxFrecuencia = freq;
      moda = numero;
    }
  });
  return moda.toDouble();
}
import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;
import 'dart:io';

/// Fungsi [main] akan menampilkan 2 output
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada library [belajar_dart]
void main(List<String> arguments) {
  // Mencetak Hello Dart! Dart is great. pada konsol
  print('Hello Dart! Dart is great.');

  // Testing documentation comment with [].
  print('6 * 7 = ${belajar_dart.calculate()}');

  // Type Data
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');

  // Operator Logika
  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print('2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }
  // Operator Logika
  if (false || true || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }

  //Exception try and catch
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch(e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    // Tetap dieksekusi apapun nilai try dan catch-nya
    print('This line still executed');
  }

  // function
  var firstNumber = 7;
  var secondNumber = 10;
  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');

  //null safety (?) variable boleh memiliki nilai null
  String? favoriteFood = 'Mie Ayam';

  buyAMeal(favoriteFood);

  // tEST
  var firstString = 'Dart';
  var secondString = 'Flutter';
  print(firstString + secondString);
}

// function
double average(num num1, num num2) => (num1 + num2) / 2;

//null safety
void buyAMeal(String favoriteFood) {
  print('Bought $favoriteFood');
}
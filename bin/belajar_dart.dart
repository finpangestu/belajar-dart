import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;
import 'dart:io';

/// Fungsi [main] akan menampilkan 2 output
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada library [belajar_dart]
void main(List<String> arguments) {
  // Mencetak Hello Dart! Dart is great. pada konsol
  print('Hello Dart! Dart is great.');

  // Testing documentation comment with [].
  print('6 * 7 = ${belajar_dart.calculate()}');

  // Type Data & Input
  stdout.write('Nama Anda : ');
  String? name = stdin.readLineSync()!;
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

  // conditional expression
  var now = 13;
  var openHours = 12;
  var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";
  print(shopStatus);

  var buyer = name ?? 'user';
  print(buyer);

  // for loops
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    print('');
  }

  // while / do-=while
  var i = 1;
  while (i < 5) {
    print(i);
    i++;
  }

  // break & continue
  var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71];
  stdout.write('Masukkan bilangan prima : ');
  var searchNumber = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i+1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }

  // List (Array)
  var numberList = [1, 2, 3, 4, 5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];
  stringList.forEach((s) => stdout.write(s));
  numberList.forEach((s) => stdout.write(s));

  print('');

  // Spread Operator (...)
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [...favorites, ...others];
  print(allFavorites);

  // set
  var numberSet = {1, 4, 6};

  numberSet.add(6);
  numberSet.addAll({2, 2, 3});
  numberSet.remove(3);

  print(numberSet.elementAt(2));

  //set union & intersection
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print(union);
  print(intersection);
  
  // Map (Array key-value)
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan'
  };
  
  print(capital['Jakarta']);

  // add Array key-value
  capital['New Delhi'] = 'India';
  print(capital);
}

// function
double average(num num1, num num2) => (num1 + num2) / 2;

//null safety
void buyAMeal(String favoriteFood) {
  print('Bought $favoriteFood');
}

// List
// stringList.remove('Programming');  Menghapus list dengan nilai Programming
// stringList.removeAt(1);            Menghapus list pada index ke-1
// stringList.removeLast();           Menghapus data list terakhir
// stringList.removeRange(0, 2);      Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
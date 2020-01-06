import 'package:gotta_learn_dart/gotta_learn_dart.dart' as gotta_learn_dart;
import 'dart:io';

void main(List<String> arguments) {
  // print() can also be used, but stdout() is used for demonstration
  stdout.writeln('Enter a number: ');
  final val = int.parse(stdin.readLineSync());

  int res;
  for (var i = 0; i < val; i++) {
    res = gotta_learn_dart.fib(i);
    print('$res ');
  }
}

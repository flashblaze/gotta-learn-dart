import 'package:gotta_learn_dart/gotta_learn_dart.dart' as gotta_learn_dart;
import 'package:gotta_learn_dart/learning_http.dart' as learning_http;
import 'dart:convert' as convert;
import 'dart:io';

void callFibonacci() {
  // print() can also be used, but stdout() is used for demonstration
  stdout.writeln('Enter a number: ');
  final val = int.parse(stdin.readLineSync());

  int res;
  for (var i = 0; i < val; i++) {
    res = gotta_learn_dart.fib(i);
    print('$res ');
  }
}

Future<void> callHTTP() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var object = await learning_http.getTitle(url);
  print("${object['body']}");
}

void main(List<String> arguments) {
  callHTTP();
}

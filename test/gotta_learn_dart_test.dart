import 'package:gotta_learn_dart/gotta_learn_dart.dart';
import 'package:test/test.dart';

void main() {
  test('Testing Fibonacci series', () {
    expect(fib(0), equals(0));
    expect(fib(2), equals(1));
    expect(fib(8), equals(21));
    expect(fib(20), equals(6765));
  });
}

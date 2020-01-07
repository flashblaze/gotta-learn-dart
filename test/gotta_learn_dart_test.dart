import 'package:gotta_learn_dart/gotta_learn_dart.dart';
import 'package:gotta_learn_dart/learning_http.dart';
import 'package:test/test.dart';

void main() {
  test('Testing Fibonacci series', () {
    expect(fib(0), equals(0));
    expect(fib(2), equals(1));
    expect(fib(8), equals(21));
    expect(fib(20), equals(6765));
  });

  group('HTTP reponse for url: ', () {
    test('1', () async {
      var urlOne = 'https://jsonplaceholder.typicode.com/posts/1';
      var responseObjectOne = await getData(urlOne);
      var actualObjectOne = {
        'userId': 1,
        'id': 1,
        'title':
            'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
        'body':
            'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'
      };
      expect(responseObjectOne, equals(actualObjectOne));
    });
    test('10', () async {
      var urlTwo = 'https://jsonplaceholder.typicode.com/posts/10';
      var responseObjectTwo = await getData(urlTwo);
      var actualObjectTwo = {
        'userId': 1,
        'id': 10,
        'title': 'optio molestias id quia eum',
        'body':
            'quo et expedita modi cum officia vel magni\ndoloribus qui repudiandae\nvero nisi sit\nquos veniam quod sed accusamus veritatis error'
      };
      expect(responseObjectTwo, equals(actualObjectTwo));
    });
    test('20', () async {
      var urlThree = 'https://jsonplaceholder.typicode.com/posts/20';
      var responseObjectThree = await getData(urlThree);
      var actualObjectThree = {
        'userId': 2,
        'id': 20,
        'title': 'doloribus ad provident suscipit at',
        'body':
            'qui consequuntur ducimus possimus quisquam amet similique\nsuscipit porro ipsam amet\neos veritatis officiis exercitationem vel fugit aut necessitatibus totam\nomnis rerum consequatur expedita quidem cumque explicabo'
      };
      expect(responseObjectThree, equals(actualObjectThree));
    });
  });
}

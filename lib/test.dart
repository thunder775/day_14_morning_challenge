import 'package:Day_14_Challenge/main.dart';
import 'package:test/test.dart';


main() {
  test('mexican wave', (){
    expect(wave("just do it") ,["Just do it", "jUst do it", "juSt do it", "jusT do it", "just Do it", "just dO it", "just do It", "just do iT"]);
  });
  test('multiplicative', (){
    expect(multiplicative(99), 2);
  });


}

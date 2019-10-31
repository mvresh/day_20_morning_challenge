import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("challenge 2", () {
    expect(getSaved(41, 3), 31);
  });

  test("challenge 3", () {
    expect(
        groupSeats([
          [1, 0, 1, 0, 1, 0, 1],
          [0, 1, 0, 1, 0, 1, 0],
          [0, 0, 1, 1, 1, 1, 1],
          [1, 0, 1, 1, 0, 0, 1],
          [1, 1, 1, 0, 1, 0, 1],
          [0, 1, 1, 1, 1, 0, 0]
        ], 2),
        3);
    expect(
        groupSeats([
          [0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0],
        ], 2),
        36);
  });
}
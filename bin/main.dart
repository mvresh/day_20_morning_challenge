// Challenge 1
// Write test cases including boundary conditions for given challenges

// Challenge 2
// Josephus Problem
// This classic problem dates back to Roman times. There are 41 soldiers arranged
// in a circle. Every third soldier is to be killed by their captors, continuing
// around the circle until only one soldier remains. He is to be freed. Assuming
// you would like to stay alive, at what position in the circle would you stand?

// Generalize this problem by creating a function that accepts the number of
// soldiers n and the interval at which they are killed i, and returns the
// position of the fortunate survivor.
int getSaved(int soldiersNumber, int interval) {
  List<int> soldiersList = List<int>.generate(soldiersNumber, (i) => i);
  int killedSoldierIndex = 0;
  while (soldiersList.length > 1) {
    killedSoldierIndex =
        (killedSoldierIndex + interval - 1) % soldiersList.length;
    soldiersList.removeAt(killedSoldierIndex);
  }
  return soldiersList[0] + 1;
}

//
//if(soldiersNumber == 1){
//return 1;
//}
//else {
//return (getSaved(soldiersNumber - 1, interval) + (interval-1)) % soldiersNumber + 1;
//}

// Challenge 3
// Movie Theater Seating
// A group of n friends are going to see a movie. They would like to find a spot
// where they can sit next to each other in the same row. A movie theater's seat
// layout can be represented as a 2-D matrix, where 0s represent empty seats and
// 1s represent taken seats.

// Create a function that, given a seat layout and the number of friends n,
// returns the number of available spots for all n friends to sit together.
//
//Examples
//groupSeats([
//  [1, 0, 1, 0, 1, 0, 1],
//  [0, 1, 0, 1, 0, 1, 0],
//  [0, 0, 1, 1, 1, 1, 1],
//  [1, 0, 1, 1, 0, 0, 1],
//  [1, 1, 1, 0, 1, 0, 1],
//  [0, 1, 1, 1, 1, 0, 0]
//    ], 2) ➞ 3

int groupSeats(List<List> theatre, int n) {
  int count = 0;
  theatre.forEach((row) {
    for(int i =0;i+n <= row.length; i++){
      row.join('').substring(i,i+n).split('').contains('1') ? null: count++;
    }
  });
  return count;
}

main() {
  print(getSaved(41, 3));
  print(getSaved(2, 1));

  print('------');
  print(groupSeats([
[1, 0, 1, 0, 1, 0, 1],
[0, 1, 0, 1, 0, 1, 0],
[0, 0, 1, 1, 1, 1, 1],
[1, 0, 1, 1, 0, 0, 1],
[1, 1, 1, 0, 1, 0, 1],
[0, 1, 1, 1, 1, 0, 0]
], 2));

  print(groupSeats([
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0],
  ], 2));
}

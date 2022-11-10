void main() {
  // List<int> numbers =
  var given_list = [5, 3, 15, 4, 1];
  num sum = 0;
  given_list.forEach((num e) {
    sum += e;
  });
  print("The sum of the entire list is $sum");

  var largest_value = given_list[0];

  given_list.forEach((e) => {
        if (e > largest_value) {largest_value = e},
      });

  print("The Largest value in the list : ${largest_value}");
  List<int> result = filterVisitors([2, 5, 56, 34], 18);
  print("Ages allowed to enter $result");

  int result2 = findOdds([56, 43, 1, 22, 3]);
  print("The Fisrt Odd Number is $result2");
}

List<int> filterVisitors(List<int> ages, int minimum) {
  List<int> filtered = ages.where((age) => age > minimum).toList();
  return filtered;
}

int findOdds(List<int> num) {
  return num.firstWhere((n) => n % 2 != 0, orElse: () => 0);
}

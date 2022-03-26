// Hello World!
void print_hello() 
{
  print("Hello Dart!");
}

void assign_val()
{
  /*
  Description
  
  var assign the type automatically.
  `val1 = val2` occur type mismatching error.

  We can use `Dynamic Type` to assign various type to val like `val3`.
  */
  var val1 = "test";
  print(val1);

  var val2 = 1;
  print(val2);

  var val3;
  print(val3);  // null

  val3 = "test";
  val3 = 1;
}

void assign_data_type()
{
  int num1 = 2;
  print(num1);  // 2

  double num2 = 2.2;
  print(num2);  // 2.2

  String name = 'Dart';
  print("Hello " + name); // Hello Dart

  bool wrong = true;
  print(wrong); // true
}

void list_practice()
{
  /*
  generations:
    List<Datatype> lst = [];
    List<Datatype> lst = [a, b, c];

    // it cannot be changed the size
    List<Datatype> lst = List.filled(length, "");

    // size changable list
    List<Datatype> lst = List.empty(growable: true);

  functions:
    lst.add(): append a value
    lst.removeAt(idx): remove a value at index idx. Index is start at 0.
    lst.join(","): make a string consists of elements
    lst.indexOf(val): return the index of val
    lst.where(condition): return the new list according to `condition`
    lst.forEach(): for-loop
    lst.map(): the same operation with `forEach`, but it makes a new list
    lst.fold():
    lst.reduce():
    lst.asMap(): 
  */
  List<String> fruits = [];

  fruits.add("Apple");
  fruits.add("Banana");
  fruits.add("Orange");
  print(fruits);  // [Apple, Banana, Orange]

  fruits.removeAt(1);
  print(fruits);

  print(fruits.join(","));  // Apple,Orange

  // where
  print(fruits.where((fruit) => fruit.toLowerCase().indexOf('a') >= 0));  // (Apple, Orange)

  // forEach
  fruits.forEach((fruit) {
    print('${fruit}!');
  });

  for (String fruit in fruits) {
    print('${fruit}!!');
  }

  // map
  Iterable<String> newFruits = fruits.map((e) {
    return 'My name is ${e}';
  });
  print(newFruits); // (My name is Apple, My name is Orange)
  print(newFruits.toList());  // [My name is Apple, My name is Orange]

  // fold
  List<int> numbers = [1, 2, 3, 4, 5];
  int result = numbers.fold(0, (previousValue, element) {
    int sum = previousValue + element;
    return sum * 2;
  });
  print(result);  // 114

  // reduce
  int total = numbers.reduce((value, element) {
    return value + element;
  });
  print(total); // 15
  int total_sim = numbers.reduce((value, element) => value + element);
  print(total_sim); // 15

  // asMap
  Iterable indexNumbers = numbers.asMap().entries.map((e) {
    return 'index: ${e.key} / value: ${e.value}';
  });
  print(indexNumbers);
  // (index: 0 / value: 1, index: 1 / value: 2, index: 2 / value: 3, index: 3 / value: 4, index: 4 / value: 5)
  print(indexNumbers.toList());
  // [index: 0 / value: 1, index: 1 / value: 2, index: 2 / value: 3, index: 3 / value: 4, index: 4 / value: 5]
}


void final_const()
{
  /*
  Description
    - final: it has to be assigned when run-time.
    - const: it has to be assigned when compile.
  */
  final DateTime now = DateTime.now();
  print(now);

  // it occur error
  // const DateTime now = DateTime.now();
  // print(now);

}

void string_interpolation()
{
  String name = "Dart";
  int num = 1;

  print("${name} ${num}");
}

// call function
void main()
{
  /* 
  todo
    map - key, value
    enum
  */
  // print_hello()
  // assign_val()
  // assign_data_type();
  // list_practice();
  // final_const();  
  string_interpolation();
}

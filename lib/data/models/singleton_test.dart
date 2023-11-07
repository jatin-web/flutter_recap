import 'dart:developer';

class MySingleton {
  late int val;

  // STEP 1: Create an instance of My singleton class
  static final MySingleton _instance = MySingleton._internal();

  // STEP 2: Make Singleton Constructor
  MySingleton._internal() {
    log("Internal");
    val = 0;
  }

  // STEP 3: Create the constructor which returns the same instance
  // created using singleton constructor
  factory MySingleton() {
    log("My Singleton 1");
    return _instance;
  }

  // ----------- Normal Functions ------------
  void increment() {
    val++;
  }

  void decrement() {
    val--;
  }

  int getVal() {
    return val;
  }
}

// ------------------ SINGLETON ----------------------

// NOTE: this keyword is not used in singleton classes

import 'dart:developer';

class CountSingleton {
  late int val;

  // STEP 1: Create an instance of My singleton class
  static final CountSingleton _instance = CountSingleton._internal();

  // STEP 2: Make Singleton Constructor [This constructor will run only once]
  CountSingleton._internal() {
    log("Singleton constructor called");
    val = 0;
  }

  // STEP 3: Create the constructor which returns the same instance
  // created using singleton constructor [This constructor will be called everytime we create an object]
  factory CountSingleton() {
    log("constructor called");
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

// --------------- NORMAL CLASS --------------
class Count {
  int val;
  Count(
      {required this.val}); // We can use "this" keyword in normal classes but not in Singleton
}

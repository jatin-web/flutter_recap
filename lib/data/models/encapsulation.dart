/* In dart, encapsulation works at library(file) level, not class level,
   So if we try to access the private variables in the same file, we can access them,
   but not outside this file. */

class EncapsulationTest {
  // Private Field
  String? _str;

  // Getter method
  String getVal() => _str ?? "";

  // Setter method
  void setVal(String s) => _str = s;
}

/* We cannot access the private fields directly, We need to
   create getter and setter methods to access them.*/

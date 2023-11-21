class GetterSetterModel {
  // Private Fields
  String? _firstName;
  String? _lastName;

  // Getter
  String get name => "$_firstName $_lastName";

  /*
  Getters are replaced these methods in an easy way ::
  
  String name(){
    return "$_firstName $_lastName";;
  }
  */

  // Setter
  set firstName(String firstName) => _firstName = firstName;
  set lastName(String lastName) => _lastName = lastName;
}

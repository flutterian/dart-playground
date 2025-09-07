import 'package:dart_playground/entries/04_dart3.0/class_modifiers/sealed_a.dart';

// 인스턴스화 불가능
// Abstract classes can't be instantiated. Try creating an instance of a concrete subtype.dartinstantiate_abstract_class
Parent parent = Parent();

// extends 불가능
// The class 'Parent' can't be extended, implemented, or mixed in outside of its library because it's a sealed class.dartinvalid_use_of_type_outside_library
class Child1 extends Parent {}

// implements 불가능
// The class 'Parent' can't be extended, implemented, or mixed in outside of its library because it's a sealed class.dartinvalid_use_of_type_outside_library
class Child2 implements Parent {}

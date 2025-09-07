import 'package:dart_playground/entries/04_dart3.0/class_modifiers/interface_a.dart';

// 인스턴스화 가능
Parent parent = Parent();

// extends 불가능
// The class 'Parent' can't be extended outside of its library because it's an interface class.dartinvalid_use_of_type_outside_library
class Child1 extends Parent {}

// implement 가능
class Child2 implements Parent {}

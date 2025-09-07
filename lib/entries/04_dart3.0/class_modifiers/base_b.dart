import 'package:dart_playground/entries/04_dart3.0/class_modifiers/base_a.dart';

// 인스턴스화 가능
Parent parent = Parent();

// 가능
base class Child extends Parent {}

// subtype_of_base_or_final_is_not_base_final_or_sealed 에러 발생
// base / sealed / final 제한자 중 하나 필요
class Child2 extends Parent {}

// invalid_use_of_type_outside_library, The class 'Parent' can't be implemented outside of its library because it's a base class.
// base 클래스는 implements 가 불가능
base class Child3 implements Parent {}

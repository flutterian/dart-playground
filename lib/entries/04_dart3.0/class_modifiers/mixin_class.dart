// 일반 mixin과 같은 역할을 하면서도 상속할 수 있음.
mixin class MixinExample {}

// extends 기능
class Child1 extends MixinExample {}

// mixin으로 사용 가능
class Child2 with MixinExample {}

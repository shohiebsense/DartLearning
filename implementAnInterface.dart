import 'dart:math';
//The Dart language doesn't include an interface keyword because every class defines an interface. 


abstract class Shape {
  factory Shape(String type){
    if(type == 'circle') return Circle(2);
    if(type == 'square') return Square(2);
    throw 'Can\'t create shape';
  }
  
  num get area;
}

//Even though the CircleMock class doesn't define any behaviors, it's valid Dart—the analyzer raises no errors.
Shape shapeFactory(String type){
  if(type == 'circle') return Circle(2);
  if(type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle{
  num area;
  num radius;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}



main(){
  //final circle = Circle(2);
  //final square = Square(2);
  
  //optiona 1 top-level function
  //final circle = shapeFactory('circle');
  //final square = shapeFactory('square');
  
  //option 2 factory constructor
  final circle = Shape('circle');
  final square = Shape('square');
  
  print(circle.area);
  print(square.area);
  
}
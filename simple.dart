class Bicycle {
  Bicycle(this.cadence, this.gear);
  int cadence;
  int gear;

  int _speed = 0;

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = new Bicycle(2, 1);
  print(bike);
}

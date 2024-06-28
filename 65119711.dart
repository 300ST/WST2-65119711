
void main() {
  Person owner = Person('John Cena');

  Engine engine = Engine('V6', 200);

  Car car = Car('Toyota', 'Camry', owner, engine);

  car.displayCarInfo();
  car.run();

  Honda honda = Honda('Honda', 'Civic', owner, engine, 'Red');

  honda.displayCarInfo();
  honda.run();
}

class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  String get model => _model;
  set model(String value) => _model = value;

  int get speed => _speed;
  set speed(int value) => _speed = value;

  void displayEngineInfo() {
    print('Model: $_model, Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get model => _model;
  set model(String value) => _model = value;

  Person get owner => _owner;
  set owner(Person value) => _owner = value;

  Engine get engine => _engine;
  set engine(Engine value) => _engine = value;

  void displayCarInfo() {
    print(
        'Car Brand: $_brand, Car Model: $_model, Owner: ${_owner.name}, Engine: ');
    _engine.displayEngineInfo();
  }

  void run() {
    print('Running at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;
  set color(String value) => _color = value;

  @override
  void displayCarInfo() {
    print(
        'Car Brand: $_brand, Car Model: $_model, Color: $_color, Owner: ${_owner.name}, Engine: ');
    _engine.displayEngineInfo();
  }

  @override
  void run() {
    print('Running at ${_engine.speed} km/h');
  }
}

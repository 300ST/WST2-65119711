void main() {
  var owner = Owner(name: 'John Cena');
  var engine = Engine(model: 'V6', speed: 120);
  var car = Car(
    brand: 'Toyota',
    model: 'Corolla',
    color: 'Blue',
    owner: owner,
    engine: engine,
  );

  car.displayCarInfo();
  car.run();

  var honda = Honda('Honda', 'Civic', owner, engine, 'Red');
  honda.displayCarInfo();
  honda.run();
}

class Car {
  String _brand;
  String _model;
  String _color;
  Owner _owner;
  Engine _engine;

  Car({
    required String brand,
    required String model,
    required String color,
    required Owner owner,
    required Engine engine,
  })  : _brand = brand,
        _model = model,
        _color = color,
        _owner = owner,
        _engine = engine;

  void displayCarInfo() {
    print('Car Brand: $_brand');
    print('Car Model: $_model');
    print('Color: $_color');
    print('Owner: ${_owner.name}');
    print('Engine: ');
    _engine.displayEngineInfo();
  }

  void run() {
    print('Speed: ${_engine.speed} km/h');
  }
}

class Owner {
  String name;

  Owner({required this.name});
}

class Engine {
  String model;
  int speed;

  Engine({required this.model, required this.speed});

  void displayEngineInfo() {
    print('Model: $model');
  }
}

class Honda extends Car {
  Honda(String brand, String model, Owner owner, Engine engine, String color)
      : super(brand: brand, model: model, color: color, owner: owner, engine: engine);

  @override
  void displayCarInfo() {
    super.displayCarInfo();
  }
}

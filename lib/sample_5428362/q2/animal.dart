class Animal {
  String id, name, color;
  Animal(this.id, this.name, this.color);

  String get getId => id;
  set setId(String id) => this.id = id;

  String get getName => name;
  set setName(String name) => this.name = name;

  String get getColor => color;
  set setColor(String color) => this.color = color;

  void display() {
    print('id: $id, name: $name, color: $color');
  }
}

class Cat extends Animal {
  String sound;
  Cat(super.id, super.name, super.color, this.sound);

  String get getSound => sound;
  set setSound(String sound) => this.sound = sound;

  @override
  void display() {
    print('id: $id, name: $name, color: $color, sound: $sound');
  }
}

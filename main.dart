class Jeepney {
  String routeName;
  int capacity;
  
  int _passengerCount = 0;

  Jeepney(this.routeName, this.capacity);

  int get passengerCount => _passengerCount;

  void boardPassengers(int count) {
    if (_passengerCount + count <= capacity) {
      _passengerCount += count;
      print('$count passengers boarded $routeName. Current count: $_passengerCount');
    } else {
      print('Cannot board $count passengers on $routeName: Exceeds capacity of $capacity!');
    }
  }

  void displayInfo() {
    print('Route: $routeName | Capacity: $capacity | Passengers: $_passengerCount');
  }
}

void main() {
  Jeepney jeepney1 = Jeepney('Katipunan - UP', 20);
  Jeepney jeepney2 = Jeepney('Cubao - Divisoria', 24);

  jeepney1.boardPassengers(12);
  jeepney2.boardPassengers(28);
  jeepney2.boardPassengers(15);

  List<Jeepney> fleet = [jeepney1, jeepney2];

  print('\n--- Fleet Status Summary ---');
  for (var jeepney in fleet) {
    jeepney.displayInfo();
  }
}
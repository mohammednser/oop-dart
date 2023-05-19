import '../coffee_machian.dart';

void main(){ 
 // print('object');


  CoffeeMachine machine1 = new CoffeeMachine(waterLevel:200,coffeeLevel:100.0);
  CoffeeMachine machine2=CoffeeMachine();
  machine1.fakeWaterAdd(1000);
  print(machine1.waterLevel);
  machine1.fakeCoffeeAdd(100);
  print(machine1.coffeeLevel);
  machine1.coffeeLevel += 440.0;
  machine1.waterLevel+=300;
  print(machine1.waterLevel);
   machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_SMALL);
 //  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_SMALL);
  print(machine1.waterLevel);
  print(machine1.coffeeLevel);
   machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_SMALL);
print(machine1.waterLevel);
  print(machine1.coffeeLevel);
  machine2.coffeeLevel;
}
import '../coffee_machian.dart';

void main(){ 
  print('object');


  CoffeeMachine machine1 = new CoffeeMachine();
  machine1.fakeWaterAdd(1000);
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
}
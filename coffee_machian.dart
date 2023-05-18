//import 'app_constant.dart';
 import 'dart:ffi';

enum CoffeeSize{
 COFFEE_SIZE_SMALL,
 COFFEE_SIZE_MEDIUM,
 COFFEE_SIZE_LARGE,
 COFFEE_SIZE_XLARGE,
 }
class CoffeeMachine {
 // List coffeeSize = [1, 2, 3, 4];
 //final coffee = 1;
   double _waterLevel = 0; // milli letter
   double _coffeeLevel = 0; // gram
    
   double get waterLevel{
    return _waterLevel;
   }
    set waterLevel(double waterLevel){
      if(waterLevel >= 0){
        _waterLevel = waterLevel;
      }else{
        print("invalid input");
      }
    
   }
 // شكل تاني لل set && get
   double get coffeeLevel => _coffeeLevel;
   set coffeeLevel(coffeeLevel) =>  _coffeeLevel=coffeeLevel;

  void turnAvailableOptionsOn() {
    print('Options Available');
  }

  void turnAvailableOptionsOff() {
    print('Options Not Available');
  }

  fakeWaterAdd(double water) {
    _waterLevel += water;
  }

  fakeCoffeeAdd(double coffee) {
    _coffeeLevel += coffee;
  }

  isWaterEnough(CoffeeSize  coffeeSize) {
    if (coffeeSize == CoffeeSize.COFFEE_SIZE_SMALL && _waterLevel >= 200) {
      return true;
      // ignore: dead_code
      print('water enough');
    } else {
      return false;
    }
  }

  _isCoffeeEnough(CoffeeSize coffeeSize) {
    if (coffeeSize == CoffeeSize.COFFEE_SIZE_SMALL && _coffeeLevel >= 10) {
      return true;
      // ignore: dead_code
      print('coffee enough');
    } else {
      return false;
    }
  }

  void warnWaterLevelLew() {
    print('water level low');
  }

  void warnCoffeeLevelLew() {
    print('coffee level low');
  }

  /*
      * coffee size 1 : water 200m , coffee 10gm
      * coffee size 2 : water 300m , coffee 20gm
      * coffee size 3 : water 400m , coffee 30gm
      * coffee size 4 : water 500m , coffee 40gm
     */
  void makeCoffee(CoffeeSize coffeeSize) {
    turnAvailableOptionsOff();
    if (coffeeSize == CoffeeSize.COFFEE_SIZE_SMALL) {
      var waterEnough = isWaterEnough(coffeeSize);
      var coffeeEnough = _isCoffeeEnough(coffeeSize);
      if (waterEnough && coffeeEnough) {
        _waterLevel -= 100;
        _coffeeLevel -= 10;
        print('Coffee Ready');
        turnAvailableOptionsOn();
      }
    }
  }

  
}

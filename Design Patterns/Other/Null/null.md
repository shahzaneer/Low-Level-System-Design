# NULL Object Design Pattern

## Problem

- In every object oriented programming language we have to deal with objects, they can either contain a value or NULL.
- If you perform some actions on Null values it will throw null pointer exception

```java
void printVehicleDetails(Vehicle vehicle){
    System.out.println(vehicle.getName);
    System.out.println(vehicle.model);
}
// if you want to avoid null pointer exception you will need to apply null checks
void printVehicleDetails(Vehicle vehicle){
    if(vehicle != null){
    System.out.println(vehicle.getName);
    System.out.println(vehicle.model);
    }
// but in real life projects you will be dealing with a bigger code base
// you will need to apply null checks everywhere which is a tedious task
// NULL OBJECT PATTERN WILL HELP YOU IN THIS CASE
}

```

---

## What it provides?

- A null object replaces NULLObject type
- No need to put `IF CHECKS` for checking NULL.
- Null Object reflects do nothing or default behavior

- In Null Object pattern, we create an abstract class specifying various operations to be done, concrete classes extending this class and a null object class providing do nothing implemention of this class and will be used seemlessly where we need to check null value.

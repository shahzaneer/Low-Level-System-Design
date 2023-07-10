# Abstract Factory

- Abstract Factory patterns work around a super-factory which creates other factories.
- This factory is also called as factory of factories
- The Problem is same as of Factory Pattern
- It is a pattern that forms a factory of a factory
- Consider you have two different types of objects of a similar interface and you need to make objects of these types frequently, you will need to make factory? yes! but there are two different types... what would you do?
- you will make one factory that resolves the type and one that resolves the factoryType.
- Better explanation in the code...
- aik FACTORY HOGI AUR AIK FACTORY PROVIDER HOGA!!
  (ISSI TRH DEPENDING UPON THE COMPLEXITY OF PROJECT YEH 2 SE ZYADA BHI HOSKTIN HAIN)
- In Abstract Factory pattern an interface is responsible for creating a factory of related objects without explicitly specifying their classes.
- Each generated factory can give the objects as per the Factory pattern.
- Dart inbuilt factory is only for FACTORY Pattern

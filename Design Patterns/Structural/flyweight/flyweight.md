# FlyWeight Design Pattern

- Flyweight pattern is primarily used to `reduce the number of objects created and to decrease memory footprint` and `increase performance.`
- This type of design pattern comes under `structural pattern` as this pattern provides ways to decrease object count thus improving the object structure of application.

- Flyweight pattern tries to `reuse already existing similar kind objects by storing them` and `creates new object when no matching object is found`

# When to Use?

- When Memory is Limited
- When Objects shared data.
- Intrinsic data: `shared among objects and remain same once defined values`
- Extrinsic data `changes based on client input and differs from one object to another`
- Creation of Object is expensive.

# How it resolves?

- From Object, remove all the extrinsic data and keep all the intrinsic data (this object is now called Flyweight Object)
- This Flyweight class cab be immutable
- Extrinsic Data can be passed to the flyweight class in method parameter.
- Once the flyweight object is created, it is cached and resued whenever required.

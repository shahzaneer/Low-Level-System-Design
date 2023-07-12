# Builder

- Builder pattern builds a complex object using simple objects and using a step by step object creation.
- This type of design pattern comes under creational pattern as this pattern provides one of the best ways to create an object.
- A Builder class builds the final object step by step.
- This builder is independent of other objects.

## Builder Pattern principle

- `build it once` and keep it as `immutable` across its life cycle.

# Why Builder?

- While creating object when object contain many attributes there are many problem:
- 1. We have to pass many arguments to create object.
- 2. Some parameters might be optional.
- 3. Factory class takes all the responsibility for creating object. if the object is heavy then all the complexity is the part of factory class.

- when we have a very big attributes lists so we will have to make a lot of constructors. har optional paramter ki wajeh se aik new constructor banana hoga.
- USED TO create immutable objects.

- Java's StringBuilder class is an example of builder design pattern

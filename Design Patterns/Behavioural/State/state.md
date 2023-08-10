# State Design Pattern

- In State pattern a `class behavior changes based on its state.`
- This type of design pattern comes under `behavior pattern.`

- In State pattern, we create `objects which represent various states` and a `context object whose behavior varies as its state object changes.`
- Vending Machine is a very good example of State Design pattern.
- In this pattern a state interface is made where all the action of the system are listed.
- Then we create concrete implementation of these specific state, we return an exception or default behaviour for those actions which are not intended for that specific implementation and the intended ones are implemented as they should be implemented.

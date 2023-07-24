# Bridge Design Pattern

- Bridge Pattern decouples an abstraction from its implementation so that the two can vary independently.
- This type of design pattern comes under `structural pattern` as this pattern decouples implementation class and abstract class by providing a bridge structure between them.

- This pattern involves an interface which acts as a bridge which makes the functionality of concrete classes independent from interface implementer classes. Both types of classes can be altered structurally without affecting each other.

## Strategy and Bridge are similar?

- Yes they are!
- The only change is the `INTENT`
- The intent in strategy was change the behaviour of contextClass in RunTime
- The intent in Bridge is implementorClass and abstractionClass should grow independently

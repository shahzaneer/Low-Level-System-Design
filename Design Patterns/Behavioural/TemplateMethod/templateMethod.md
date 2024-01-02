# Template Design Pattern

- It comes under the category of behavious design pattern.
- Defines the `skeleton of an algorithm` in the `superclass` but lets subclasses override specific steps of the algorithm without changing its structure more precisely the sequence.
- The overall structure and sequence of the algorithm are preserved by the parent class.

## Resons to use Template Design Pattern

- Let subclasses implement varying behavior (through method overriding)
- Avoid duplication in the code, the general workflow structure is implemented once in the abstract class’s algorithm, and necessary variations are implemented in the subclasses.
- Control at what points subclassing is allowed. As opposed to a simple polymorphic override, where the base method would be entirely rewritten allowing radical change to the workflow, only the specific details of the workflow are allowed to change. i.e., making the template function to be final so that it is not allowed to be overriden.

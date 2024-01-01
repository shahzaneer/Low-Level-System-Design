# Visitor Design Pattern

- This type of design pattern comes under the `Behaviour Design Pattern` Category.
- lets you separate algorithms from the objects on which they operate.
- It is used when we have to perform an operation on a group of similar kind of Objects. With the help of visitor pattern, we can move the operational logic from the objects to another class.
- This allows you to add new operations to existing classes without changing their structure.
- It does `Double Dispatch` to achieve this.

## Double Dispatch

- Double Dispatch means, method which need to be invoked is decided by the `caller object` and the `object that is passed in the argument`.

## Strategy vs Visitor Design Pattern

- `Strategy` is used to separate out the `algorithm` (as algorithms are independent of the objects on which they can be applied)
- `Visitor` is used to separate out the `operations` (as operations are dependent of the objects on which they are called)


### More Explanation is with the help of code.
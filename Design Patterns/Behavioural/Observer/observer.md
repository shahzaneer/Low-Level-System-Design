# Observer Design Pattern

- Observer pattern is used when there is `one-to-many relationship` between objects such as if one object is modified, its depenedent objects are to be notified automatically.
- Observer pattern falls under `behavioral pattern` category.
- In this when the `subject changes all its dependent objects notified the changes`.

- aik Observable houta hai aur aik observer hota hai ,jese hi observable ki state change hogi yeh observer ko update karega
- `Publisher-Subscriber` model k tehat kaam krta hai
- `Notify me functionalities` in ecommerce sites are done with it (Amazon)

## Why Observer?

- ager aik object ki state change hone se dusre objects ki state change krni ho tou yeh pattern use hoga!
- it will help in loosely coupled code and we will be able to apply dependency inversion principle

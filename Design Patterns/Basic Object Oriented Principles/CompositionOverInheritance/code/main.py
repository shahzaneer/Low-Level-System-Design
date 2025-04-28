#! Wrong Rigid Inheritance - Tight Coupling ❌
class Animal:
    def move(self):
        print("Moving...")


class Bird(Animal):
    def fly(self):
        print("Flying...")


class Penguin(Bird):
    def swim(self):
        print("Swimming...")


# But Penguins don't fly! 🐧
penguin = Penguin()
penguin.fly()  # Awkward. Penguins can't fly.

# Right usage of Composition over Inheritance ✅


class Movement:
    def move(self):
        print("Moving...")


class Swimming:
    def swim(self):
        print("Swimming...")


class Penguin:
    def __init__(self):
        self.movement = Movement()
        self.swimming = Swimming()

    def move(self):
        self.movement.move()

    def swim(self):
        self.swimming.swim()


# Now it's accurate!
penguin = Penguin()
penguin.move()   # Moving...
penguin.swim()   # Swimming...

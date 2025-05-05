# ❌ The Chaining way (Too Much Depth — Breaking Law of Demeter)

def get_shipping_city(order):
    return order.user.profile.address.city

#! You're reaching deep into multiple layers 
#! — user -> profile -> address -> city. Too tightly coupled.


#✅ The Right Way (Law of Demeter Compliant)
def get_shipping_city(order):
    return order.get_user_city()

# and inside the Order class:
class Order:
    def get_user_city(self):
        return self.user.get_city()


class User:
    def get_city(self):
        return self.profile.get_city()


class Profile:
    def get_city(self):
        return self.address.city


#! Now every class only talks to its immediate neighbor, 
#! not their internals. Loose, elegant, testable.

# Facade Design Pattern

- Facade pattern `hides the complexities of the system` and `provides an interface to the client using which the client can access the system.`
- This type of design pattern comes under `structural pattern` as this pattern adds an interface to existing system to hide its complexities.

- This pattern involves a `single class which provides simplified methods required by client and delegates calls to methods of existing system classes.`
- System main jo complex processing horhi hai usko hide krna aur client k liay aik asaan class provide krna jiske methods ko call kr k client use kr paye system k functionalities

## Workflow

- Client -> FacadeClass -> ComplexitiesOfSystem
- however if client wants to access Complexities independently it should be
  optional for it. We should not enforce the client to work with FacadeClass Only

- `Facade has SystemComplexClasses`

## Advantage

- let us say the complex system changed logically!
- Now the client class will be directly affected? Yes
- But if we have a facade layer; only it will be affected
- it is like providing an abstraction of the system complexities to the client
- Multiple facade layers can be made for providing easiness for the system designer and the client

## Facade vs Proxy

- Proxy is specific for a specific object(interface)
- facade takes care of all the system

## Facade vs Adapter

- Adapter is used to provide the functionality limitation between two incompatible interfaces
- Whereas Facade is only limited to hiding the complexities

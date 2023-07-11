public class Car{
    private static Car car;

    private Car(){}

    //lazy way of creating singleton object 
    // it has a problem as when multiple threads are involved
    // they can call the objects multiple times
    // for example T1 and T2 calls the same method getCar
    // they move to line 13 at the same time
    // now they will call the constructor 1+1  which is wrong
    // we need to make it synchronize in case of java 
    public static Car getCar(){
        if(car == null){
        synchronized (Car.class){
            if(car == null){
                car = new Car();
            }
        }
    }
        return car;
    }
}


public class Main{
    public static void main(String[] args) {
        Car c1 = Car.getCar();
        Car c2 = Car.getCar();
        System.out.println(c1 == c2); //Same objects
        System.out.println(c1.hashcode);
        System.out.println(c2.hashcode);
    
    }
}

public class Jeep{
    // it is eager way of creating the singleton object
    private static Jeep jeep = new Jeep();
    // static : creates a single copy for a class 
    // static : belongs to the class not object

     private Jeep(){}

     public static Jeep getJeep(){
        return jeep;
     }
}

// In terms of usage eager way is not that good
// as hmne pehle se hi object bana kr rakha hua
// hai jbke hmain iski zarurat nhi hai


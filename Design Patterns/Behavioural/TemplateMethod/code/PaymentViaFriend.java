public class PaymentViaFriend extends PaymentFlow{

    // You can declare the steps of functions with your own choice
    // however their sequence will be reinforced by the template function
    @Override
    void initiatePaymentRequest() {
        System.out.println("Initiate payment Friend");
    }

    @Override
    void processPaymentRequest() {
        System.out.println("process payment Friend");

    }

    @Override
    void calculateBalance() {
        System.out.println("calculate balance Friend");

    }

    @Override
    void payFee() {
        System.out.println("Pay fee Friend");

    }

    @Override
    void notifyUser() {
        System.out.println("notify user Friend");
    }
    
}

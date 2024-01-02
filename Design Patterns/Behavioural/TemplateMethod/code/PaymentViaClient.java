public class PaymentViaClient extends PaymentFlow{

    @Override
    void initiatePaymentRequest() {
        System.out.println("Initiate payment client");
    }

    @Override
    void processPaymentRequest() {
                System.out.println("process payment client");

    }

    @Override
    void calculateBalance() {
                System.out.println("calculate balance client");

    }

    @Override
    void payFee() {
        System.out.println("Pay fee client");

    }

    @Override
    void notifyUser() {
        System.out.println("notify user client");
    }
    
}

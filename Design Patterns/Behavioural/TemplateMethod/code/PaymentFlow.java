public abstract class PaymentFlow{
    abstract void initiatePaymentRequest();    
    abstract void processPaymentRequest();
    abstract void calculateBalance();
    abstract void payFee();
    abstract void notifyUser();

    final void sendPayment(){
        // TEMPLATE FUNCTION enforcing the structure to be followed in sequence
        // STEP 1
        initiatePaymentRequest();
        // STEP 2
        processPaymentRequest();
        // STEP 3
        calculateBalance();
        // STEP 4
        payFee();
        // STEP 5
        notifyUser();
    }
}
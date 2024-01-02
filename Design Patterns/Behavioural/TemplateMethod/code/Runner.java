public class Runner {
    public static void main(String[] args) {
        PaymentFlow clientPayment = new PaymentViaClient();
        PaymentFlow friendPayment = new PaymentViaFriend();

        clientPayment.sendPayment();
        System.out.println("------------------");
        friendPayment.sendPayment();
    }
}

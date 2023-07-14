import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        System.out.println("creating object");

        NetworkConnection networkConnection = new NetworkConnection();
        networkConnection.setIp("192.168.100.6");
        ArrayList<String> domains = new ArrayList<String>();
        domains.add("www.shah.com");
        domains.add("www.github.com");
        domains.add("www.linkedin.com");
        networkConnection.setDomains(domains);
        networkConnection.loadData();

        // we want another instance of NetworkConnection
        try {
            NetworkConnection n2 = (NetworkConnection) networkConnection.clone();
            NetworkConnection n3 = (NetworkConnection) networkConnection.clone();
            System.out.println(networkConnection);
            // now after printing this I decided to change the IP address in the first
            // connection (primitives are passed by value so no change in the cloned objects
            // with shallow copy)
            // networkConnection.setIp("10.10.10.10");

            // Now I decided to change the domains
            networkConnection.getDomains().remove(0);

            System.out.println(networkConnection);
            System.out.println(n2);
            System.out.println(n3);
        } catch (CloneNotSupportedException error) {

        }
    }
}
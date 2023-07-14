import java.util.ArrayList;

public class NetworkConnection implements Cloneable {
    private String ip, data;
    private ArrayList<String> domains = new ArrayList<String>();

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public void setDomains(ArrayList<String> domains) {
        this.domains = domains;
    }

    public ArrayList<String> getDomains() {
        return this.domains;
    }

    public void loadData() throws InterruptedException {
        this.data = "very very  important data jo fetch hone main kaafi time leta hai";
        Thread.sleep(5000);
    }

    @Override
    public String toString() {
        return "IP : " + this.ip + "DATA: " + this.data + "Domains: " + this.domains;
    }

    // ! Shallow Copy
    // @Override
    // protected Object clone() throws CloneNotSupportedException {
    // return super.clone();
    // }

    // ! Deep Copy
    @Override
    protected Object clone() throws CloneNotSupportedException {
        NetworkConnection nc = new NetworkConnection();
        nc.setIp(this.getIp());
        nc.setData(this.getData());

        for (String domain : this.getDomains()) {
            nc.getDomains().add(domain);
        }

        return nc;
    }

}

// ! Revision
// Shallow Copy -> srff reference copy hota hai data members ka
// aik ko change krne se dusre per farq parega
// Deep Copy -> value copy hoti hai
// data members main se kisi ko change krne se dusre main farq nhi perta
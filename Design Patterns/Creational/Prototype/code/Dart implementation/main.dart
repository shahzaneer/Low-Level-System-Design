import 'NetworkConnection.dart';

void main(List<String> args) async {
  NetworkConnection n1 = new NetworkConnection(ip: "192.168.100");
  await n1.loadData();
  print("loaded data ");
  List<String> domains = ["www.shah.com", "www.github.com", "www.linkedin.com"];
  n1.domains = domains;

  NetworkConnection n2 = n1.copyWith(ip: "192.168.101");
  NetworkConnection n3 = n1.copyWith(ip: "192.168.102");

  print(n1.toString());
  print(n2.toString());
  print(n3.toString());
}

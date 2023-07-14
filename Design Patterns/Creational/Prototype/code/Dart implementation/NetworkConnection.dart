class NetworkConnection {
  String? ip;
  String? data;
  List<String>? domains;

  NetworkConnection({this.ip, this.data, this.domains});

  NetworkConnection copyWith(
      {String? ip, String? data, List<String>? domains}) {
    return NetworkConnection(
        ip: ip ?? this.ip,
        data: data ?? this.data,
        domains: domains ?? this.domains);
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 10), () {
      this.data = "THE BIG DATA FOR BIG BRAINS";
    });
  }

  @override
  String toString() {
    return "IP: $ip Data: $data Domains: $domains";
  }
}

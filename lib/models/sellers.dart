class Sellers {
  String? sellerUid;
  String? sellerName;
  String? sellerAvatarUrl;
  String? sellerEmail;
  Sellers({
    this.sellerUid,
    this.sellerName,
    this.sellerAvatarUrl,
    this.sellerEmail,
  });
  Sellers.fromJson(Map<String, dynamic> json) {
    sellerUid = json["sellerUid"];
    sellerName = json["sellerName"];
    sellerAvatarUrl = json["sellerAvatarUrl"];
    sellerEmail = json["sellerEmail"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["sellerUid"] = this.sellerUid;
    data["sellerName"] = this.sellerName;
    data["sellerAvatarUrl"] = this.sellerAvatarUrl;
    data["sellerEmail"] = this.sellerEmail;
    return data;
  }
}

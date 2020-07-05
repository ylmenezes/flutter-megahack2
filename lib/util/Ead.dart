class Ead {
  String link;
  String image;
  String title;

  Ead({this.link, this.image, this.title});

  Ead.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['image'] = this.image;
    data['title'] = this.title;
    return data;
  }
}
class PostBlog {
  final String title;
  final String location;
  final String catagory;
  final String description;
  final String photo;



  PostBlog({
    this.title,
    this.location,
    this.catagory,
    this.description,
    this.photo,
  });

  factory PostBlog.getfromJson(Map<String, dynamic> json) {
    return PostBlog(
      title: json['title'],
      location: json['location'],
      catagory: json['catagory'],
      description: json['description'],
      photo: json["photo"]
    );
  }
}

part of swagger.api;

class PostCreate {
  
  int? id;
  

  String? title;
  

  String? content;
  

  String? categories;
  
/* With Draft chosen, will only be shown for admin users on the site. */
  int? status;
  
/* With Published chosen, won't be shown until this time */
  DateTime? publishDate;
  
/* With Published chosen, won't be shown after this time */
  DateTime? expiryDate;
  

  bool? allowComments;
  
  PostCreate();

  @override
  String toString() {
    return 'PostCreate[id=$id, title=$title, content=$content, categories=$categories, status=$status, publishDate=$publishDate, expiryDate=$expiryDate, allowComments=$allowComments, ]';
  }

  PostCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    content =
        json['content']
    ;
    categories =
        json['categories']
    ;
    status =
        json['status']
    ;
    publishDate = json['publish_date'] == null ? null : DateTime.parse(json['publish_date']);
    expiryDate = json['expiry_date'] == null ? null : DateTime.parse(json['expiry_date']);
    allowComments =
        json['allow_comments']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'categories': categories,
      'status': status,
      'publish_date': publishDate == null ? '' : publishDate?.toUtc().toIso8601String(),
      'expiry_date': expiryDate == null ? '' : expiryDate?.toUtc().toIso8601String(),
      'allow_comments': allowComments
     };
  }

  static List<PostCreate> listFromJson(List<dynamic> json) {
    return json == null ? <PostCreate>[] : json.map((value) => new PostCreate.fromJson(value)).toList();
  }

  static Map<String, PostCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostCreate.fromJson(value));
    }
    return map;
  }
}


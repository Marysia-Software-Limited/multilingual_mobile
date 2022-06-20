part of swagger.api;

class Comment {
  
  int? id;
  

  User? user;
  

  String? userName;
  

  String? comment;
  

  DateTime? submitDate;
  
/* Uncheck this box to make the comment effectively disappear from the site. */
  bool? isPublic;
  
/* Check this box if the comment is inappropriate. A \"This comment has been removed\" message will be displayed instead. */
  bool? isRemoved;
  
  Comment();

  @override
  String toString() {
    return 'Comment[id=$id, user=$user, userName=$userName, comment=$comment, submitDate=$submitDate, isPublic=$isPublic, isRemoved=$isRemoved, ]';
  }

  Comment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    user =
      
      
      new User.fromJson(json['user'])
;
    userName =
        json['user_name']
    ;
    comment =
        json['comment']
    ;
    submitDate = json['submit_date'] == null ? null : DateTime.parse(json['submit_date']);
    isPublic =
        json['is_public']
    ;
    isRemoved =
        json['is_removed']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user,
      'user_name': userName,
      'comment': comment,
      'submit_date': submitDate == null ? '' : submitDate?.toUtc().toIso8601String(),
      'is_public': isPublic,
      'is_removed': isRemoved
     };
  }

  static List<Comment> listFromJson(List<dynamic> json) {
    return json == null ? <Comment>[] : json.map((value) => new Comment.fromJson(value)).toList();
  }

  static Map<String, Comment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Comment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Comment.fromJson(value));
    }
    return map;
  }
}


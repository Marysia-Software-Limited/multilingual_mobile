part of swagger.api;

class Category {
  
  int? id;
  

  String? title;
  
/* Leave blank to have the URL auto-generated from the title. */
  String? slug;
  
  Category();

  @override
  String toString() {
    return 'Category[id=$id, title=$title, slug=$slug, ]';
  }

  Category.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    slug =
        json['slug']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'slug': slug
     };
  }

  static List<Category> listFromJson(List<dynamic> json) {
    return json == null ? <Category>[] : json.map((value) => new Category.fromJson(value)).toList();
  }

  static Map<String, Category> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Category>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Category.fromJson(value));
    }
    return map;
  }
}


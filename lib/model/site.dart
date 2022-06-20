part of swagger.api;

class Site {
  
  String? title;
  

  String? tagline;
  

  String? domain;
  
  Site();

  @override
  String toString() {
    return 'Site[title=$title, tagline=$tagline, domain=$domain, ]';
  }

  Site.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title =
        json['title']
    ;
    tagline =
        json['tagline']
    ;
    domain =
        json['domain']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'tagline': tagline,
      'domain': domain
     };
  }

  static List<Site> listFromJson(List<dynamic> json) {
    return json == null ? <Site>[] : json.map((value) => new Site.fromJson(value)).toList();
  }

  static Map<String, Site> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Site>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Site.fromJson(value));
    }
    return map;
  }
}


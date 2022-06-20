part of swagger.api;

class PostOutput {
  int? id;
  User? user;
/* With Published chosen, won't be shown until this time */
  DateTime? publishDate;
  DateTime? updated;
  String? title;
  String? content;
  String? excerpt;
/* Leave blank to have the URL auto-generated from the title. */
  String? slug;
  String? url;
  String? shortUrl;
  List<Category> categories = [];
  bool? allowComments;
  int? commentsCount;
  List<Comment> comments = [];
  String? tags;
  String? featuredImage;
  String? description;

  PostOutput();

  @override
  String toString() {
    return 'PostOutput[id=$id, user=$user, publishDate=$publishDate, updated=$updated, title=$title, content=$content, excerpt=$excerpt, slug=$slug, url=$url, shortUrl=$shortUrl, categories=$categories, allowComments=$allowComments, commentsCount=$commentsCount, comments=$comments, tags=$tags, featuredImage=$featuredImage, description=$description, ]';
  }

  PostOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    user = new User.fromJson(json['user']);
    publishDate = json['publish_date'] == null
        ? null
        : DateTime.parse(json['publish_date']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    title = json['title'];
    content = json['content'];
    excerpt = json['excerpt'];
    slug = json['slug'];
    url = json['url'];
    shortUrl = json['short_url'];
    categories = Category.listFromJson(json['categories']);
    allowComments = json['allow_comments'];
    commentsCount = json['comments_count'];
    comments = Comment.listFromJson(json['comments']);
    tags = json['tags'];
    featuredImage = json['featured_image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user,
      'publish_date':
          publishDate == null ? '' : publishDate?.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated?.toUtc().toIso8601String(),
      'title': title,
      'content': content,
      'excerpt': excerpt,
      'slug': slug,
      'url': url,
      'short_url': shortUrl,
      'categories': categories,
      'allow_comments': allowComments,
      'comments_count': commentsCount,
      'comments': comments,
      'tags': tags,
      'featured_image': featuredImage,
      'description': description
    };
  }

  static List<PostOutput> listFromJson(List<dynamic> json) {
    return json == null
        ? <PostOutput>[]
        : json.map((value) => new PostOutput.fromJson(value)).toList();
  }

  static Map<String, PostOutput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PostOutput.fromJson(value));
    }
    return map;
  }
}

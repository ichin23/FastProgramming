import 'package:fastprogramming/data/comment.dart';

class Post {
  final String user, title, description, code;
  final List<String> tags;
  final int like;
  final List<Comment> comments;

  Post(
      {this.user,
      this.title,
      this.tags,
      this.description,
      this.code,
      this.like = 0,
      this.comments});
}

List<Post> posts = [
  Post(
    user: "magico",
    title: "Error on my first app",
    description: "My code don't work, and I need for YESTERDAYY!!",
    comments: [
      Comment(comment: "This is easy os solve", user: "mixin"),
      Comment(comment: "Remake the code", user: "xinga"),
      Comment(comment: "Learn to programming", user: "mixageiro"),
    ],
  ),
  Post(
    user: "fingi",
    title: "Error on my bakcend app",
    description: "My code don't find the database",
    code:
        "<html>\n<body>\n<div><p>nbvjdiasvkudiajv</p>\n<img url='https:...'</img>\n</div></body",
    comments: [
      Comment(comment: "This is easy os solve", user: "mixin"),
      Comment(comment: "Remake the code", user: "xinga"),
      Comment(comment: "Learn to programming", user: "mixageiro"),
    ],
  ),
  Post(
    user: "double int",
    title: "Help-me",
    description: "Where my code is broken?",
    code: "I dont know Swift\n    'main(){}?'",
    comments: [
      Comment(comment: "This is easy os solve", user: "mixin"),
      Comment(comment: "Remake the code", user: "xinga"),
      Comment(comment: "Learn to programming", user: "mixageiro"),
    ],
  ),
  Post(
    user: "int",
    title: "me",
    description: "Where my  is broken?",
    code: "I dont ain(){}?'",
    comments: [
      Comment(comment: "This is easy os solve", user: "mixin"),
      Comment(comment: "Remake the code", user: "xinga"),
      Comment(comment: "Learn to programming", user: "mixageiro"),
    ],
  ),
  Post(
    user: "double",
    title: "Help",
    description: "Where roken?",
    code: "I wift\n    'main(){}?'",
    comments: [
      Comment(comment: "This is easy os solve", user: "mixin"),
      Comment(comment: "Remake the code", user: "xinga"),
      Comment(comment: "Learn to programming", user: "mixageiro"),
    ],
  ),
  Post(
    user: "double int",
    title: "Help-me",
    description: "Where my code is broken?",
    code: "I dont know Swift\n    'main(){}?'",
    comments: [
      Comment(comment: "This is easy os solve", user: "mixin"),
      Comment(comment: "Remake the code", user: "xinga"),
      Comment(comment: "Learn to programming", user: "mixageiro"),
    ],
  ),
];

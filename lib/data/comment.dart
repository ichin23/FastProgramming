class Comment {
  final String comment;
  final String user;
  bool isFavorite = false;

  Comment({this.comment, this.user});

  void changeFavorite() {
    isFavorite = !isFavorite;
  }
}

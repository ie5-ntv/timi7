getName(String gameName){
  return gameName;
}
getReview(double rating){
  if(rating > 8){
    print('Editors choice ***');
    print('-------------');
  }
  return rating;
}
void showGenre(List gg) {
  print('Genres: ');
  gg.forEach((element) {
  print(element);
  });
}
review(String gameName, double rating, List genre){
  print('Name: ' + getName(gameName));
  print('review: ' + getReview(rating).toString());
  showGenre(genre);
  print('---------------------------------------');
//  print('Genre' + genre.forEach((element) { print('element')}))
}